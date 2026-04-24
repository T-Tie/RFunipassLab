; ModuleID = '/tmp/tmp0p4yarhe.cpp'
source_filename = "/tmp/tmp0p4yarhe.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%struct.stu = type { [30 x i8], [30 x i8], i8, i32, float, [30 x i8], ptr }

@p1 = dso_local global ptr null, align 8
@p2 = dso_local global ptr null, align 8
@head = dso_local global ptr null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" %g\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call noalias ptr @malloc(i64 noundef 112) #4
  store ptr %call, ptr @p2, align 8, !tbaa !5
  store ptr %call, ptr @p1, align 8, !tbaa !5
  %0 = load ptr, ptr @p1, align 8, !tbaa !5
  %num = getelementptr inbounds nuw %struct.stu, ptr %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [30 x i8], ptr %num, i64 0, i64 0
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay)
  %1 = load ptr, ptr @p1, align 8, !tbaa !5
  %name = getelementptr inbounds nuw %struct.stu, ptr %1, i32 0, i32 1
  %arraydecay2 = getelementptr inbounds [30 x i8], ptr %name, i64 0, i64 0
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay2)
  %2 = load ptr, ptr @p1, align 8, !tbaa !5
  %sex = getelementptr inbounds nuw %struct.stu, ptr %2, i32 0, i32 2
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %sex)
  %3 = load ptr, ptr @p1, align 8, !tbaa !5
  %age = getelementptr inbounds nuw %struct.stu, ptr %3, i32 0, i32 3
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.2, ptr noundef %age)
  %4 = load ptr, ptr @p1, align 8, !tbaa !5
  %score = getelementptr inbounds nuw %struct.stu, ptr %4, i32 0, i32 4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.3, ptr noundef %score)
  %5 = load ptr, ptr @p1, align 8, !tbaa !5
  %add = getelementptr inbounds nuw %struct.stu, ptr %5, i32 0, i32 5
  %arraydecay7 = getelementptr inbounds [30 x i8], ptr %add, i64 0, i64 0
  %call8 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.4, ptr noundef %arraydecay7)
  %6 = load ptr, ptr @p1, align 8, !tbaa !5
  store ptr %6, ptr @head, align 8, !tbaa !5
  %7 = load ptr, ptr @head, align 8, !tbaa !5
  %next = getelementptr inbounds nuw %struct.stu, ptr %7, i32 0, i32 6
  store ptr null, ptr %next, align 8, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %call9 = call noalias ptr @malloc(i64 noundef 112) #4
  store ptr %call9, ptr @p1, align 8, !tbaa !5
  %8 = load ptr, ptr @p1, align 8, !tbaa !5
  %9 = load ptr, ptr @p2, align 8, !tbaa !5
  %next10 = getelementptr inbounds nuw %struct.stu, ptr %9, i32 0, i32 6
  store ptr %8, ptr %next10, align 8, !tbaa !10
  %10 = load ptr, ptr @p1, align 8, !tbaa !5
  %num11 = getelementptr inbounds nuw %struct.stu, ptr %10, i32 0, i32 0
  %arraydecay12 = getelementptr inbounds [30 x i8], ptr %num11, i64 0, i64 0
  %call13 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.4, ptr noundef %arraydecay12)
  %11 = load ptr, ptr @p1, align 8, !tbaa !5
  %num14 = getelementptr inbounds nuw %struct.stu, ptr %11, i32 0, i32 0
  %arrayidx = getelementptr inbounds [30 x i8], ptr %num14, i64 0, i64 0
  %12 = load i8, ptr %arrayidx, align 8, !tbaa !14
  %conv = sext i8 %12 to i32
  %cmp = icmp eq i32 %conv, 101
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.cond
  %13 = load ptr, ptr @p1, align 8, !tbaa !5
  %num15 = getelementptr inbounds nuw %struct.stu, ptr %13, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [30 x i8], ptr %num15, i64 0, i64 1
  %14 = load i8, ptr %arrayidx16, align 1, !tbaa !14
  %conv17 = sext i8 %14 to i32
  %cmp18 = icmp eq i32 %conv17, 110
  br i1 %cmp18, label %land.lhs.true19, label %if.end

land.lhs.true19:                                  ; preds = %land.lhs.true
  %15 = load ptr, ptr @p1, align 8, !tbaa !5
  %num20 = getelementptr inbounds nuw %struct.stu, ptr %15, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [30 x i8], ptr %num20, i64 0, i64 2
  %16 = load i8, ptr %arrayidx21, align 2, !tbaa !14
  %conv22 = sext i8 %16 to i32
  %cmp23 = icmp eq i32 %conv22, 100
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true19
  %17 = load ptr, ptr @p2, align 8, !tbaa !5
  %next24 = getelementptr inbounds nuw %struct.stu, ptr %17, i32 0, i32 6
  store ptr null, ptr %next24, align 8, !tbaa !10
  br label %print

if.end:                                           ; preds = %land.lhs.true19, %land.lhs.true, %for.cond
  %18 = load ptr, ptr @p1, align 8, !tbaa !5
  %name25 = getelementptr inbounds nuw %struct.stu, ptr %18, i32 0, i32 1
  %arraydecay26 = getelementptr inbounds [30 x i8], ptr %name25, i64 0, i64 0
  %call27 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay26)
  %19 = load ptr, ptr @p1, align 8, !tbaa !5
  %sex28 = getelementptr inbounds nuw %struct.stu, ptr %19, i32 0, i32 2
  %call29 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %sex28)
  %20 = load ptr, ptr @p1, align 8, !tbaa !5
  %age30 = getelementptr inbounds nuw %struct.stu, ptr %20, i32 0, i32 3
  %call31 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.2, ptr noundef %age30)
  %21 = load ptr, ptr @p1, align 8, !tbaa !5
  %score32 = getelementptr inbounds nuw %struct.stu, ptr %21, i32 0, i32 4
  %call33 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.3, ptr noundef %score32)
  %22 = load ptr, ptr @p1, align 8, !tbaa !5
  %add34 = getelementptr inbounds nuw %struct.stu, ptr %22, i32 0, i32 5
  %arraydecay35 = getelementptr inbounds [30 x i8], ptr %add34, i64 0, i64 0
  %call36 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.4, ptr noundef %arraydecay35)
  %23 = load ptr, ptr @p1, align 8, !tbaa !5
  store ptr %23, ptr @p2, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !15

print:                                            ; preds = %if.then
  %24 = load ptr, ptr @head, align 8, !tbaa !5
  call void @_Z6resultP3stu(ptr noundef %24)
  ret i32 0
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: mustprogress uwtable
define dso_local void @_Z6resultP3stu(ptr noundef %x) #3 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !5
  %next = getelementptr inbounds nuw %struct.stu, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %next, align 8, !tbaa !10
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %x.addr, align 8, !tbaa !5
  %num = getelementptr inbounds nuw %struct.stu, ptr %2, i32 0, i32 0
  %arraydecay = getelementptr inbounds [30 x i8], ptr %num, i64 0, i64 0
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay)
  %3 = load ptr, ptr %x.addr, align 8, !tbaa !5
  %name = getelementptr inbounds nuw %struct.stu, ptr %3, i32 0, i32 1
  %arraydecay1 = getelementptr inbounds [30 x i8], ptr %name, i64 0, i64 0
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay1)
  %4 = load ptr, ptr %x.addr, align 8, !tbaa !5
  %sex = getelementptr inbounds nuw %struct.stu, ptr %4, i32 0, i32 2
  %5 = load i8, ptr %sex, align 4, !tbaa !18
  %conv = sext i8 %5 to i32
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv)
  %6 = load ptr, ptr %x.addr, align 8, !tbaa !5
  %age = getelementptr inbounds nuw %struct.stu, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %age, align 8, !tbaa !19
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %7)
  %8 = load ptr, ptr %x.addr, align 8, !tbaa !5
  %score = getelementptr inbounds nuw %struct.stu, ptr %8, i32 0, i32 4
  %9 = load float, ptr %score, align 4, !tbaa !20
  %conv5 = fpext float %9 to double
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %conv5)
  %10 = load ptr, ptr %x.addr, align 8, !tbaa !5
  %add = getelementptr inbounds nuw %struct.stu, ptr %10, i32 0, i32 5
  %arraydecay7 = getelementptr inbounds [30 x i8], ptr %add, i64 0, i64 0
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, ptr noundef %arraydecay7)
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %x.addr, align 8, !tbaa !5
  %next10 = getelementptr inbounds nuw %struct.stu, ptr %11, i32 0, i32 6
  %12 = load ptr, ptr %next10, align 8, !tbaa !10
  call void @_Z6resultP3stu(ptr noundef %12)
  %13 = load ptr, ptr %x.addr, align 8, !tbaa !5
  %num11 = getelementptr inbounds nuw %struct.stu, ptr %13, i32 0, i32 0
  %arraydecay12 = getelementptr inbounds [30 x i8], ptr %num11, i64 0, i64 0
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay12)
  %14 = load ptr, ptr %x.addr, align 8, !tbaa !5
  %name14 = getelementptr inbounds nuw %struct.stu, ptr %14, i32 0, i32 1
  %arraydecay15 = getelementptr inbounds [30 x i8], ptr %name14, i64 0, i64 0
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay15)
  %15 = load ptr, ptr %x.addr, align 8, !tbaa !5
  %sex17 = getelementptr inbounds nuw %struct.stu, ptr %15, i32 0, i32 2
  %16 = load i8, ptr %sex17, align 4, !tbaa !18
  %conv18 = sext i8 %16 to i32
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv18)
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !5
  %age20 = getelementptr inbounds nuw %struct.stu, ptr %17, i32 0, i32 3
  %18 = load i32, ptr %age20, align 8, !tbaa !19
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %18)
  %19 = load ptr, ptr %x.addr, align 8, !tbaa !5
  %score22 = getelementptr inbounds nuw %struct.stu, ptr %19, i32 0, i32 4
  %20 = load float, ptr %score22, align 4, !tbaa !20
  %conv23 = fpext float %20 to double
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %conv23)
  %21 = load ptr, ptr %x.addr, align 8, !tbaa !5
  %add25 = getelementptr inbounds nuw %struct.stu, ptr %21, i32 0, i32 5
  %arraydecay26 = getelementptr inbounds [30 x i8], ptr %add25, i64 0, i64 0
  %call27 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, ptr noundef %arraydecay26)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 _ZTS3stu", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !6, i64 104}
!11 = !{!"_ZTS3stu", !8, i64 0, !8, i64 30, !8, i64 60, !12, i64 64, !13, i64 68, !8, i64 72, !6, i64 104}
!12 = !{!"int", !8, i64 0}
!13 = !{!"float", !8, i64 0}
!14 = !{!8, !8, i64 0}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = !{!11, !8, i64 60}
!19 = !{!11, !12, i64 64}
!20 = !{!11, !13, i64 68}
