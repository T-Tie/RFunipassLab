; ModuleID = '/tmp/tmpscfokitl.cpp'
source_filename = "/tmp/tmpscfokitl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca [300 x i8], align 16
  %a = alloca [500 x [5 x i8]], align 16
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  %n = alloca i32, align 4
  %s = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %max = alloca [500 x i32], align 16
  %da = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 300, ptr %c) #6
  call void @llvm.lifetime.start.p0(i64 2500, ptr %a) #6
  call void @llvm.memset.p0.i64(ptr align 16 %a, i8 0, i64 2500, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.start.p0(i64 2000, ptr %max) #6
  call void @llvm.memset.p0.i64(ptr align 16 %max, i8 0, i64 2000, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %da) #6
  store i32 0, ptr %da, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  %arraydecay = getelementptr inbounds [300 x i8], ptr %c, i64 0, i64 0
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arraydecay)
  %arraydecay2 = getelementptr inbounds [500 x [5 x i8]], ptr %a, i64 0, i64 0
  store ptr %arraydecay2, ptr %p, align 8, !tbaa !9
  %arraydecay3 = getelementptr inbounds [300 x i8], ptr %c, i64 0, i64 0
  store ptr %arraydecay3, ptr %q, align 8, !tbaa !9
  store i32 0, ptr %s, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %q, align 8, !tbaa !9
  %1 = load i8, ptr %0, align 1, !tbaa !12
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %s, align 4, !tbaa !5
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %s, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load ptr, ptr %q, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %q, align 8, !tbaa !9
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  %arraydecay4 = getelementptr inbounds [300 x i8], ptr %c, i64 0, i64 0
  store ptr %arraydecay4, ptr %q, align 8, !tbaa !9
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc8, %for.end
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %s, align 4, !tbaa !5
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %5, %6
  %add = add nsw i32 %sub, 1
  %cmp6 = icmp slt i32 %4, %add
  br i1 %cmp6, label %for.body7, label %for.end12

for.body7:                                        ; preds = %for.cond5
  %7 = load ptr, ptr %p, align 8, !tbaa !9
  %8 = load ptr, ptr %q, align 8, !tbaa !9
  %9 = load i32, ptr %n, align 4, !tbaa !5
  call void @_Z5chuanPA5_cPci(ptr noundef %7, ptr noundef %8, i32 noundef %9)
  br label %for.inc8

for.inc8:                                         ; preds = %for.body7
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %inc9 = add nsw i32 %10, 1
  store i32 %inc9, ptr %i, align 4, !tbaa !5
  %11 = load ptr, ptr %q, align 8, !tbaa !9
  %incdec.ptr10 = getelementptr inbounds nuw i8, ptr %11, i32 1
  store ptr %incdec.ptr10, ptr %q, align 8, !tbaa !9
  %12 = load ptr, ptr %p, align 8, !tbaa !9
  %incdec.ptr11 = getelementptr inbounds nuw [5 x i8], ptr %12, i32 1
  store ptr %incdec.ptr11, ptr %p, align 8, !tbaa !9
  br label %for.cond5, !llvm.loop !16

for.end12:                                        ; preds = %for.cond5
  %13 = load i32, ptr %s, align 4, !tbaa !5
  %14 = load i32, ptr %n, align 4, !tbaa !5
  %sub13 = sub nsw i32 %13, %14
  %add14 = add nsw i32 %sub13, 1
  store i32 %add14, ptr %k, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc34, %for.end12
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %16 = load i32, ptr %k, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %15, %16
  br i1 %cmp16, label %for.body17, label %for.end36

for.body17:                                       ; preds = %for.cond15
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %add18 = add nsw i32 %17, 1
  store i32 %add18, ptr %j, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc31, %for.body17
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %19 = load i32, ptr %k, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %18, %19
  br i1 %cmp20, label %for.body21, label %for.end33

for.body21:                                       ; preds = %for.cond19
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [500 x [5 x i8]], ptr %a, i64 0, i64 %idxprom
  %arraydecay22 = getelementptr inbounds [5 x i8], ptr %arrayidx, i64 0, i64 0
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom23 = sext i32 %21 to i64
  %arrayidx24 = getelementptr inbounds [500 x [5 x i8]], ptr %a, i64 0, i64 %idxprom23
  %arraydecay25 = getelementptr inbounds [5 x i8], ptr %arrayidx24, i64 0, i64 0
  %call26 = call i32 @strcmp(ptr noundef %arraydecay22, ptr noundef %arraydecay25) #7
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then, label %if.end

if.then:                                          ; preds = %for.body21
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom28 = sext i32 %22 to i64
  %arrayidx29 = getelementptr inbounds [500 x i32], ptr %max, i64 0, i64 %idxprom28
  %23 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %inc30 = add nsw i32 %23, 1
  store i32 %inc30, ptr %arrayidx29, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body21
  br label %for.inc31

for.inc31:                                        ; preds = %if.end
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %inc32 = add nsw i32 %24, 1
  store i32 %inc32, ptr %j, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !17

for.end33:                                        ; preds = %for.cond19
  br label %for.inc34

for.inc34:                                        ; preds = %for.end33
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %inc35 = add nsw i32 %25, 1
  store i32 %inc35, ptr %i, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !18

for.end36:                                        ; preds = %for.cond15
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc47, %for.end36
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %27 = load i32, ptr %k, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %26, %27
  br i1 %cmp38, label %for.body39, label %for.end49

for.body39:                                       ; preds = %for.cond37
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom40 = sext i32 %28 to i64
  %arrayidx41 = getelementptr inbounds [500 x i32], ptr %max, i64 0, i64 %idxprom40
  %29 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %30 = load i32, ptr %da, align 4, !tbaa !5
  %cmp42 = icmp sgt i32 %29, %30
  br i1 %cmp42, label %if.then43, label %if.end46

if.then43:                                        ; preds = %for.body39
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom44 = sext i32 %31 to i64
  %arrayidx45 = getelementptr inbounds [500 x i32], ptr %max, i64 0, i64 %idxprom44
  %32 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  store i32 %32, ptr %da, align 4, !tbaa !5
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %for.body39
  br label %for.inc47

for.inc47:                                        ; preds = %if.end46
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %inc48 = add nsw i32 %33, 1
  store i32 %inc48, ptr %i, align 4, !tbaa !5
  br label %for.cond37, !llvm.loop !19

for.end49:                                        ; preds = %for.cond37
  %34 = load i32, ptr %da, align 4, !tbaa !5
  %cmp50 = icmp eq i32 %34, 0
  br i1 %cmp50, label %if.then51, label %if.else

if.then51:                                        ; preds = %for.end49
  %call52 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end70

if.else:                                          ; preds = %for.end49
  %35 = load i32, ptr %da, align 4, !tbaa !5
  %add53 = add nsw i32 %35, 1
  %call54 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %add53)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc67, %if.else
  %36 = load i32, ptr %i, align 4, !tbaa !5
  %37 = load i32, ptr %k, align 4, !tbaa !5
  %cmp56 = icmp slt i32 %36, %37
  br i1 %cmp56, label %for.body57, label %for.end69

for.body57:                                       ; preds = %for.cond55
  %38 = load i32, ptr %da, align 4, !tbaa !5
  %39 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom58 = sext i32 %39 to i64
  %arrayidx59 = getelementptr inbounds [500 x i32], ptr %max, i64 0, i64 %idxprom58
  %40 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  %cmp60 = icmp eq i32 %38, %40
  br i1 %cmp60, label %if.then61, label %if.end66

if.then61:                                        ; preds = %for.body57
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom62 = sext i32 %41 to i64
  %arrayidx63 = getelementptr inbounds [500 x [5 x i8]], ptr %a, i64 0, i64 %idxprom62
  %arraydecay64 = getelementptr inbounds [5 x i8], ptr %arrayidx63, i64 0, i64 0
  %call65 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %arraydecay64)
  br label %if.end66

if.end66:                                         ; preds = %if.then61, %for.body57
  br label %for.inc67

for.inc67:                                        ; preds = %if.end66
  %42 = load i32, ptr %i, align 4, !tbaa !5
  %inc68 = add nsw i32 %42, 1
  store i32 %inc68, ptr %i, align 4, !tbaa !5
  br label %for.cond55, !llvm.loop !20

for.end69:                                        ; preds = %for.cond55
  br label %if.end70

if.end70:                                         ; preds = %for.end69, %if.then51
  call void @llvm.lifetime.end.p0(i64 4, ptr %da) #6
  call void @llvm.lifetime.end.p0(i64 2000, ptr %max) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6
  call void @llvm.lifetime.end.p0(i64 2500, ptr %a) #6
  call void @llvm.lifetime.end.p0(i64 300, ptr %c) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z5chuanPA5_cPci(ptr noundef %p, ptr noundef %q, i32 noundef %n) #4 {
entry:
  %p.addr = alloca ptr, align 8
  %q.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8, !tbaa !9
  store ptr %q, ptr %q.addr, align 8, !tbaa !9
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  store i32 0, ptr %i, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %q.addr, align 8, !tbaa !9
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %idx.ext
  %4 = load i8, ptr %add.ptr, align 1, !tbaa !12
  %5 = load ptr, ptr %p.addr, align 8, !tbaa !9
  %arraydecay = getelementptr inbounds [5 x i8], ptr %5, i64 0, i64 0
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext1 = sext i32 %6 to i64
  %add.ptr2 = getelementptr inbounds i8, ptr %arraydecay, i64 %idx.ext1
  store i8 %4, ptr %add.ptr2, align 1, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #5

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !14, !15}
!17 = distinct !{!17, !14, !15}
!18 = distinct !{!18, !14, !15}
!19 = distinct !{!19, !14, !15}
!20 = distinct !{!20, !14, !15}
!21 = distinct !{!21, !14, !15}
