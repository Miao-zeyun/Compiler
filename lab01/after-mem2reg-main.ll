; ModuleID = 'main-mem2reg.bc'
source_filename = "main.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"compile project(test)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"file:%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"main.c\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"date:%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Oct  8 2022\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"time:%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"12:17:18\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Please input x and y:\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"x=%d, y=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"MAX number=%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"add result=%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"fibonacci sequence:%d %d\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"array:\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @add(i32, i32) #0 {
  %3 = add nsw i32 %0, %1
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [15 x i32], align 16
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0))
  %9 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32* %1, i32* %2)
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i32 %10, i32 %11)
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %18

; <label>:16:                                     ; preds = %0
  %17 = load i32, i32* %1, align 4
  br label %20

; <label>:18:                                     ; preds = %0
  %19 = load i32, i32* %2, align 4
  br label %20

; <label>:20:                                     ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 %21)
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @add(i32 %23, i32 %24)
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i32 %25)
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0), i32 0, i32 1)
  br label %28

; <label>:28:                                     ; preds = %30, %20
  %.04 = phi i32 [ 1, %20 ], [ %33, %30 ]
  %.03 = phi i32 [ 1, %20 ], [ %31, %30 ]
  %.02 = phi i32 [ 0, %20 ], [ %.03, %30 ]
  %29 = icmp slt i32 %.04, 10
  br i1 %29, label %30, label %34

; <label>:30:                                     ; preds = %28
  %31 = add nsw i32 %.02, %.03
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i32 %31)
  %33 = add nsw i32 %.04, 1
  br label %28

; <label>:34:                                     ; preds = %28
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  br label %36

; <label>:36:                                     ; preds = %46, %34
  %.05 = phi i32 [ 0, %34 ], [ %47, %46 ]
  %.01 = phi i32 [ 0, %34 ], [ %.1, %46 ]
  %37 = icmp slt i32 %.05, 30
  br i1 %37, label %38, label %48

; <label>:38:                                     ; preds = %36
  %39 = srem i32 %.05, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

; <label>:41:                                     ; preds = %38
  %42 = sext i32 %.01 to i64
  %43 = getelementptr inbounds [15 x i32], [15 x i32]* %3, i64 0, i64 %42
  store i32 %.05, i32* %43, align 4
  %44 = add nsw i32 %.01, 1
  br label %45

; <label>:45:                                     ; preds = %41, %38
  %.1 = phi i32 [ %44, %41 ], [ %.01, %38 ]
  br label %46

; <label>:46:                                     ; preds = %45
  %47 = add nsw i32 %.05, 1
  br label %36

; <label>:48:                                     ; preds = %36
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0))
  br label %50

; <label>:50:                                     ; preds = %57, %48
  %.0 = phi i32 [ 0, %48 ], [ %58, %57 ]
  %51 = icmp slt i32 %.0, 15
  br i1 %51, label %52, label %59

; <label>:52:                                     ; preds = %50
  %53 = sext i32 %.0 to i64
  %54 = getelementptr inbounds [15 x i32], [15 x i32]* %3, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i32 %55)
  br label %57

; <label>:57:                                     ; preds = %52
  %58 = add nsw i32 %.0, 1
  br label %50

; <label>:59:                                     ; preds = %50
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i32 @__isoc99_scanf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
