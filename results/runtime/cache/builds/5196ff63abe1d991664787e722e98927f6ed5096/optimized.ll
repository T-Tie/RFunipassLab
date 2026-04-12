; ModuleID = '<stdin>'
source_filename = "/tmp/tmpc9dufp80.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a1 = alloca i32, align 4
  %a2 = alloca i32, align 4
  %b1 = alloca i32, align 4
  %b2 = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %b = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %a1) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %a2) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %b1) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %b2) #5
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull %b) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %a1, ptr noundef nonnull align 4 %a2)
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.end ], [ 0, %entry ]
  %0 = load i32, ptr %a1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv23, %1
  br i1 %cmp, label %for.cond1, label %for.end10

for.cond1:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %2 = load i32, ptr %a2, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond1
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv23, i64 %indvars.iv
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond

for.end10:                                        ; preds = %for.cond
  %call11 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %b1, ptr noundef nonnull %b2)
  br label %for.cond13

for.cond13:                                       ; preds = %for.end29, %for.end10
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.end29 ], [ 0, %for.end10 ]
  %4 = load i32, ptr %b1, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp14 = icmp slt i64 %indvars.iv29, %5
  br i1 %cmp14, label %for.cond18, label %for.cond69

for.cond18:                                       ; preds = %for.cond13, %for.inc27
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.inc27 ], [ 0, %for.cond13 ]
  %6 = load i32, ptr %b2, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp19 = icmp slt i64 %indvars.iv26, %7
  br i1 %cmp19, label %for.inc27, label %for.end29

for.inc27:                                        ; preds = %for.cond18
  %arrayidx25 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv29, i64 %indvars.iv26
  %call26 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx25)
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond18, !llvm.loop !12

for.end29:                                        ; preds = %for.cond18
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond13

for.cond69:                                       ; preds = %for.cond13, %for.end95
  %n68.0 = phi i32 [ %inc9.i6, %for.end95 ], [ 0, %for.cond13 ]
  %8 = load i32, ptr %a1, align 4, !tbaa !5
  %cmp70 = icmp slt i32 %n68.0, %8
  br i1 %cmp70, label %for.body72, label %for.end98

for.body72:                                       ; preds = %for.cond69
  %call76 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 undef)
  %9 = load i32, ptr %b2, align 4, !tbaa !5
  %cmp77 = icmp eq i32 %9, 1
  br i1 %cmp77, label %if.then, label %if.end

if.then:                                          ; preds = %for.body72
  %putchar = call i32 @putchar(i32 10)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body72
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc93, %if.end
  %i79.0 = phi i32 [ 1, %if.end ], [ %inc94, %for.inc93 ]
  %10 = load i32, ptr %b2, align 4, !tbaa !5
  %cmp81 = icmp slt i32 %i79.0, %10
  br i1 %cmp81, label %for.body83, label %for.end95

for.body83:                                       ; preds = %for.cond80
  %call88 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 undef)
  %11 = load i32, ptr %b2, align 4, !tbaa !5
  %sub = add nsw i32 %11, -1
  %cmp89 = icmp eq i32 %i79.0, %sub
  br i1 %cmp89, label %if.then90, label %for.inc93

if.then90:                                        ; preds = %for.body83
  %putchar21 = call i32 @putchar(i32 10)
  br label %for.inc93

for.inc93:                                        ; preds = %for.body83, %if.then90
  %inc94 = add nuw nsw i32 %i79.0, 1
  br label %for.cond80, !llvm.loop !13

for.end95:                                        ; preds = %for.cond80
  %inc9.i6 = add nuw nsw i32 %n68.0, 1
  br label %for.cond69

for.end98:                                        ; preds = %for.cond69
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %b2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %b1) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %a2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %a1) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

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
