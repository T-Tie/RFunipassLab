; ModuleID = '<stdin>'
source_filename = "/tmp/tmplx75b76s.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body ], [ 1, %entry ]
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp.not = icmp sgt i64 %indvars.iv, %4
  br i1 %cmp.not, label %while.cond2.preheader, label %while.body

while.cond2.preheader:                            ; preds = %while.cond
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %vla, i64 4
  br label %while.cond2

while.body:                                       ; preds = %while.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %m)
  %5 = load i32, ptr %m, align 4, !tbaa !5
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv
  store i32 %5, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %while.cond, !llvm.loop !9

while.cond2:                                      ; preds = %while.cond2.preheader, %if.end26
  %6 = phi i32 [ %3, %while.cond2.preheader ], [ %.pre, %if.end26 ]
  %indvars.iv17 = phi i64 [ 1, %while.cond2.preheader ], [ %indvars.iv.next18, %if.end26 ]
  %7 = sext i32 %6 to i64
  %cmp3.not = icmp sgt i64 %indvars.iv17, %7
  br i1 %cmp3.not, label %while.end28, label %while.body4

while.body4:                                      ; preds = %while.cond2
  %cmp5 = icmp eq i64 %indvars.iv17, 1
  br i1 %cmp5, label %if.then, label %while.cond9.preheader

while.cond9.preheader:                            ; preds = %while.body4
  %arrayidx13 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv17
  br label %while.cond9

if.then:                                          ; preds = %while.body4
  %8 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %call8 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %8)
  br label %if.end26

while.cond9:                                      ; preds = %while.cond9.preheader, %while.body11
  %indvars.iv14 = phi i64 [ 1, %while.cond9.preheader ], [ %indvars.iv.next15, %while.body11 ]
  %k.0 = phi i32 [ 0, %while.cond9.preheader ], [ %spec.select, %while.body11 ]
  %exitcond.not = icmp eq i64 %indvars.iv14, %indvars.iv17
  br i1 %exitcond.not, label %while.end19, label %while.body11

while.body11:                                     ; preds = %while.cond9
  %9 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %arrayidx15 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv14
  %10 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %cmp16 = icmp eq i32 %9, %10
  %add = zext i1 %cmp16 to i32
  %spec.select = add nuw nsw i32 %k.0, %add
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %while.cond9, !llvm.loop !12

while.end19:                                      ; preds = %while.cond9
  %cmp20 = icmp eq i32 %k.0, 0
  br i1 %cmp20, label %if.then21, label %if.end26

if.then21:                                        ; preds = %while.end19
  %11 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %call24 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %11)
  br label %if.end26

if.end26:                                         ; preds = %while.end19, %if.then21, %if.then
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %while.cond2, !llvm.loop !13

while.end28:                                      ; preds = %while.cond2
  %12 = load ptr, ptr @stdin, align 8, !tbaa !14
  %call.i = call i32 @getc(ptr noundef %12)
  %13 = load ptr, ptr @stdin, align 8, !tbaa !14
  %call.i12 = call i32 @getc(ptr noundef %13)
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
