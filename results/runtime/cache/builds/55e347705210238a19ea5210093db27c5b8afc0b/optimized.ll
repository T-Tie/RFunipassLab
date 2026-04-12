; ModuleID = '<stdin>'
source_filename = "/tmp/tmpamx87_gl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z2f1Piii(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %p, i32 noundef %n, i32 noundef %k) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %m) #5
  %0 = load i32, ptr %p, align 4, !tbaa !5
  store i32 %0, ptr %m, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %n
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i32, ptr %p, i64 %idx.ext
  %2 = load i32, ptr %add.ptr, align 4, !tbaa !5
  %3 = load i32, ptr %m, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  store i32 %2, ptr %m, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc11, %for.end
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %4, %n
  br i1 %cmp5, label %for.inc11, label %for.end13

for.inc11:                                        ; preds = %for.cond4
  %idx.ext7 = sext i32 %4 to i64
  %add.ptr8 = getelementptr inbounds i32, ptr %p, i64 %idx.ext7
  %5 = load i32, ptr %add.ptr8, align 4, !tbaa !5
  %6 = load i32, ptr %m, align 4, !tbaa !5
  %sub = sub nsw i32 %5, %6
  store i32 %sub, ptr %add.ptr8, align 4, !tbaa !5
  %inc12 = add nsw i32 %4, 1
  store i32 %inc12, ptr %i, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !12

for.end13:                                        ; preds = %for.cond4
  %cmp14 = icmp sgt i32 %k, 1
  br i1 %cmp14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %for.end13
  %add.ptr16 = getelementptr inbounds i32, ptr %p, i64 100
  %sub17 = sub nsw i32 %k, 1
  call void @_Z2f1Piii(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %add.ptr16, i32 noundef %n, i32 noundef %sub17) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %for.end13
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %m) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z2f2Piii(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %p, i32 noundef %n, i32 noundef %k) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %m) #5
  %0 = load i32, ptr %p, align 4, !tbaa !5
  store i32 %0, ptr %m, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %n
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %1, 100
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, ptr %p, i64 %idx.ext
  %2 = load i32, ptr %add.ptr, align 4, !tbaa !5
  %3 = load i32, ptr %m, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  store i32 %2, ptr %m, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc14, %for.end
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %4, %n
  br i1 %cmp6, label %for.inc14, label %for.end16

for.inc14:                                        ; preds = %for.cond5
  %mul8 = mul nsw i32 %4, 100
  %idx.ext9 = sext i32 %mul8 to i64
  %add.ptr10 = getelementptr inbounds i32, ptr %p, i64 %idx.ext9
  %5 = load i32, ptr %add.ptr10, align 4, !tbaa !5
  %6 = load i32, ptr %m, align 4, !tbaa !5
  %sub = sub nsw i32 %5, %6
  store i32 %sub, ptr %add.ptr10, align 4, !tbaa !5
  %inc15 = add nsw i32 %4, 1
  store i32 %inc15, ptr %i, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !14

for.end16:                                        ; preds = %for.cond5
  %cmp17 = icmp sgt i32 %k, 1
  br i1 %cmp17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %for.end16
  %add.ptr19 = getelementptr inbounds i32, ptr %p, i64 1
  %sub20 = sub nsw i32 %k, 1
  call void @_Z2f2Piii(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %add.ptr19, i32 noundef %n, i32 noundef %sub20) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %for.end16
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %m) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #5
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %a = alloca [100 x [100 x i32]], align 16
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca i32, align 4
  %m = alloca i32, align 4
  %h = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 captures(none) dereferenceable(40000) %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %t) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %m) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %h) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc66, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end68

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %t, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %t, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %idxprom7 = sext i32 %4 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx8)
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %t, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !15

for.inc10:                                        ; preds = %for.cond4
  %inc11 = add nsw i32 %2, 1
  store i32 %inc11, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !16

for.end12:                                        ; preds = %for.cond1
  store i32 0, ptr %h, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc63, %for.end12
  %.sink = phi i32 [ %3, %for.end12 ], [ %dec, %for.inc63 ]
  %cmp15 = icmp sgt i32 %.sink, 1
  br i1 %cmp15, label %for.body16, label %for.inc66

for.body16:                                       ; preds = %for.cond14
  call void @_Z2f1Piii(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(40000) %a, i32 noundef %.sink, i32 noundef %.sink) #7
  call void @_Z2f2Piii(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(40000) %a, i32 noundef %.sink, i32 noundef %.sink) #7
  %arrayidx17 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 1
  %arrayidx18 = getelementptr inbounds [100 x i32], ptr %arrayidx17, i64 0, i64 1
  %6 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %7 = load i32, ptr %h, align 4, !tbaa !5
  %add = add nsw i32 %7, %6
  store i32 %add, ptr %h, align 4, !tbaa !5
  store i32 0, ptr %t, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc37, %for.body16
  %8 = load i32, ptr %t, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %8, %.sink
  br i1 %cmp20, label %for.body21, label %for.end39

for.body21:                                       ; preds = %for.cond19
  store i32 1, ptr %m, align 4, !tbaa !5
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc34, %for.body21
  %9 = load i32, ptr %m, align 4, !tbaa !5
  %sub = sub nsw i32 %.sink, 1
  %cmp23 = icmp slt i32 %9, %sub
  br i1 %cmp23, label %for.inc34, label %for.inc37

for.inc34:                                        ; preds = %for.cond22
  %idxprom25 = sext i32 %8 to i64
  %arrayidx26 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom25
  %add27 = add nsw i32 %9, 1
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds [100 x i32], ptr %arrayidx26, i64 0, i64 %idxprom28
  %10 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %idxprom32 = sext i32 %9 to i64
  %arrayidx33 = getelementptr inbounds [100 x i32], ptr %arrayidx26, i64 0, i64 %idxprom32
  store i32 %10, ptr %arrayidx33, align 4, !tbaa !5
  store i32 %add27, ptr %m, align 4, !tbaa !5
  br label %for.cond22, !llvm.loop !17

for.inc37:                                        ; preds = %for.cond22
  %inc38 = add nsw i32 %8, 1
  store i32 %inc38, ptr %t, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !18

for.end39:                                        ; preds = %for.cond19
  store i32 0, ptr %t, align 4, !tbaa !5
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc60, %for.end39
  %11 = load i32, ptr %t, align 4, !tbaa !5
  %sub41 = sub nsw i32 %.sink, 1
  %cmp42 = icmp slt i32 %11, %sub41
  br i1 %cmp42, label %for.body43, label %for.inc63

for.body43:                                       ; preds = %for.cond40
  store i32 1, ptr %m, align 4, !tbaa !5
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc57, %for.body43
  %12 = load i32, ptr %m, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %12, %sub41
  br i1 %cmp46, label %for.inc57, label %for.inc60

for.inc57:                                        ; preds = %for.cond44
  %add48 = add nsw i32 %12, 1
  %idxprom49 = sext i32 %add48 to i64
  %arrayidx50 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom49
  %idxprom51 = sext i32 %11 to i64
  %arrayidx52 = getelementptr inbounds [100 x i32], ptr %arrayidx50, i64 0, i64 %idxprom51
  %13 = load i32, ptr %arrayidx52, align 4, !tbaa !5, !invariant.load !19
  %idxprom53 = sext i32 %12 to i64
  %arrayidx54 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom53
  %arrayidx56 = getelementptr inbounds [100 x i32], ptr %arrayidx54, i64 0, i64 %idxprom51
  store i32 %13, ptr %arrayidx56, align 4, !tbaa !5
  store i32 %add48, ptr %m, align 4, !tbaa !5
  br label %for.cond44, !llvm.loop !20

for.inc60:                                        ; preds = %for.cond44
  %inc61 = add nsw i32 %11, 1
  store i32 %inc61, ptr %t, align 4, !tbaa !5
  br label %for.cond40, !llvm.loop !21

for.inc63:                                        ; preds = %for.cond40
  %dec = add nsw i32 %.sink, -1
  br label %for.cond14, !llvm.loop !22

for.inc66:                                        ; preds = %for.cond14
  %14 = load i32, ptr %h, align 4, !tbaa !5
  %call65 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %14) #7
  %inc67 = add nsw i32 %0, 1
  store i32 %inc67, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !23

for.end68:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %h) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %m) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %t) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #7
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull align 16 dereferenceable(40000) %a) #7
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

attributes #0 = { mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nofree nosync nounwind }
attributes #7 = { nounwind }

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = !{}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
