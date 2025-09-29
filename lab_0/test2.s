.section .data
error_msg:  .string "ERROR!\n"        # 错误提示字符串

.section .text
.globl add
add:
    add a0, a0, a1    # a0 = a0 + a1
    ret

.globl print
print:
    addi sp, sp, -16  # 分配 16 字节栈空间（保持对齐）
    sd ra, 8(sp)      # 保存返回地址
    call putint       # 调用 sysY 的 putint 函数
    ld ra, 8(sp)      # 恢复返回地址
    addi sp, sp, 16   # 释放栈空间
    ret

.globl putstr
putstr:
    addi sp, sp, -16  # 分配 16 字节栈空间
    sd ra, 8(sp)      # 保存返回地址
    # sysY 库没有直接的字符串输出函数，使用 putch 循环输出
    mv t0, a0         # 保存字符串地址
putstr_loop:
    lb t1, 0(t0)      # 加载一个字符
    beqz t1, putstr_end  # 如果遇到 0，结束
    mv a0, t1         # 将字符作为参数
    call putch        # 输出字符
    addi t0, t0, 1    # 移动到下一个字符
    j putstr_loop
putstr_end:
    ld ra, 8(sp)      # 恢复返回地址
    addi sp, sp, 16   # 释放栈空间
    ret

.globl main
main:
    # 强制栈对齐到 16 字节
    andi sp, sp, -16  # 将 sp 对齐到 16 字节边界
    # 分配 64 字节栈空间（16 字节对齐）
    addi sp, sp, -64
    sd ra, 56(sp)     # 保存返回地址
    sd s0, 48(sp)     # 保存 n
    sd s1, 40(sp)     # 保存 a[0]
    sd s2, 32(sp)     # 保存 a[1]
    sd s3, 24(sp)     # 保存 i
    sd s4, 16(sp)     # 保存 t

    # 初始化
    li s1, 0          # a[0] = 0
    li s2, 1          # a[1] = 1
    li s3, 1          # i = 1

    # 读取 n
    call getint       # 调用 sysY 的 getint 函数
    mv s0, a0         # 将输入的 n 保存到 s0

    # 处理 n < 0
    bgez s0, check_zero  # 如果 n >= 0，跳转到检查 n == 0
    la a0, error_msg     # 加载 "ERROR!\n" 地址
    call putstr          # 打印错误信息
    j end                # 直接退出

check_zero:
    # 处理 n == 0
    bnez s0, check_max   # 如果 n != 0，跳转到检查最大值
    mv a0, s1            # a[0]
    call print           # 打印 a[0]
    j end                # 退出

check_max:
    # 限制 n 最大值
    li t0, 10000
    ble s0, t0, fib_start
    li s0, 10000

fib_start:
    # 打印 a[0]
    mv a0, s1
    call print

    # 打印换行符
    li a0, 10           # '\n' 的 ASCII 码
    call putch

    # 打印 a[1]
    mv a0, s2
    call print

    # 打印换行符
    li a0, 10           # '\n' 的 ASCII 码
    call putch

    # 循环
loop:
    addi s3, s3, 1      # i = i + 1
    bgt s3, s0, end     # 如果 i > n，结束
    mv s4, s2           # t = a[1]
    add s2, s1, s2      # a[1] = a[0] + a[1]
    mv a0, s2           # 打印 a[1]
    call print
    # 打印换行符
    li a0, 10           # '\n' 的 ASCII 码
    call putch
    mv s1, s4           # a[0] = t
    j loop

end:
    # 恢复寄存器并释放栈
    ld s4, 16(sp)
    ld s3, 24(sp)
    ld s2, 32(sp)
    ld s1, 40(sp)
    ld s0, 48(sp)
    ld ra, 56(sp)
    addi sp, sp, 64
    li a0, 0
    ret