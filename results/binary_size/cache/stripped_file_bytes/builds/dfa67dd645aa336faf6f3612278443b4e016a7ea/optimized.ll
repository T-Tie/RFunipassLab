; ModuleID = '<stdin>'
source_filename = "/tmp/tmpglrniazw.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %str = alloca [301 x i8], align 16
  %counter = alloca [26 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 301, ptr nonnull %str) #7
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %counter) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %counter, i8 0, i64 104, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %str)
  %call2 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #8
  %conv = trunc i64 %call2 to i32
  %cmp10 = icmp sgt i32 %conv, 0
  br i1 %cmp10, label %for.body.preheader, label %for.cond11.preheader

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = and i64 %call2, 2147483647
  br label %for.body

for.cond11.preheader.loopexit:                    ; preds = %for.inc
  %0 = icmp eq i32 %no.1, 0
  br label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %for.cond11.preheader.loopexit, %entry
  %no.0.lcssa = phi i1 [ false, %entry ], [ %0, %for.cond11.preheader.loopexit ]
  br label %for.body14

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %no.012 = phi i32 [ 1, %for.body.preheader ], [ %no.1, %for.inc ]
  %arrayidx = getelementptr inbounds nuw [301 x i8], ptr %str, i64 0, i64 %indvars.iv
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %2 = add i8 %1, -97
  %or.cond = icmp ult i8 %2, 26
  br i1 %or.cond, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %conv3 = zext nneg i8 %1 to i64
  %sub = add nuw nsw i64 %conv3, 4294967199
  %idxprom8 = and i64 %sub, 4294967295
  %arrayidx9 = getelementptr inbounds nuw [26 x i32], ptr %counter, i64 0, i64 %idxprom8
  %3 = load i32, ptr %arrayidx9, align 4, !tbaa !8
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %arrayidx9, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %no.1 = phi i32 [ 0, %if.then ], [ %no.012, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond11.preheader.loopexit, label %for.body, !llvm.loop !10

for.body14:                                       ; preds = %for.cond11.preheader, %for.inc28
  %indvars.iv16 = phi i64 [ 97, %for.cond11.preheader ], [ %indvars.iv.next17, %for.inc28 ]
  %4 = add nsw i64 %indvars.iv16, -97
  %arrayidx18 = getelementptr inbounds [26 x i32], ptr %counter, i64 0, i64 %4
  %5 = load i32, ptr %arrayidx18, align 4, !tbaa !8
  %cmp19 = icmp sgt i32 %5, 0
  br i1 %cmp19, label %if.then20, label %for.inc28

if.then20:                                        ; preds = %for.body14
  %6 = trunc nuw nsw i64 %indvars.iv16 to i32
  %call26 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %6, i32 noundef %5)
  br label %for.inc28

for.inc28:                                        ; preds = %for.body14, %if.then20
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %exitcond22.not = icmp eq i64 %indvars.iv.next17, 123
  br i1 %exitcond22.not, label %for.end30, label %for.body14, !llvm.loop !13

for.end30:                                        ; preds = %for.inc28
  br i1 %no.0.lcssa, label %if.end33, label %if.then31

if.then31:                                        ; preds = %for.end30
  %call32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %for.end30
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %counter) #7
  call void @llvm.lifetime.end.p0(i64 301, ptr nonnull %str) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z13main_h5_1_ptrv() local_unnamed_addr #6 {
entry:
  %str = alloca [301 x i8], align 16
  %counter = alloca [26 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 301, ptr nonnull %str) #7
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %counter) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %counter, i8 0, i64 104, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %str)
  %0 = load i8, ptr %str, align 16, !tbaa !5
  %tobool.not10 = icmp eq i8 %0, 0
  br i1 %tobool.not10, label %if.then6, label %for.body.outer

for.body.outer:                                   ; preds = %entry, %for.inc.thread
  %.ph = phi i8 [ %6, %for.inc.thread ], [ %0, %entry ]
  %1 = phi i1 [ true, %for.inc.thread ], [ false, %entry ]
  %p.011.ph = phi ptr [ %incdec.ptr18, %for.inc.thread ], [ %str, %entry ]
  br label %for.body

for.body:                                         ; preds = %for.body.outer, %for.inc
  %2 = phi i8 [ %4, %for.inc ], [ %.ph, %for.body.outer ]
  %p.011 = phi ptr [ %incdec.ptr, %for.inc ], [ %p.011.ph, %for.body.outer ]
  %3 = add i8 %2, -97
  %or.cond = icmp ult i8 %3, 26
  br i1 %or.cond, label %for.inc.thread, label %for.inc

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %p.011, i64 1
  %4 = load i8, ptr %incdec.ptr, align 1, !tbaa !5
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %for.end, label %for.body, !llvm.loop !14

for.inc.thread:                                   ; preds = %for.body
  %sub = zext nneg i8 %3 to i64
  %arrayidx = getelementptr inbounds nuw [26 x i32], ptr %counter, i64 0, i64 %sub
  %5 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %arrayidx, align 4, !tbaa !8
  %incdec.ptr18 = getelementptr inbounds nuw i8, ptr %p.011, i64 1
  %6 = load i8, ptr %incdec.ptr18, align 1, !tbaa !5
  %tobool.not19 = icmp eq i8 %6, 0
  br i1 %tobool.not19, label %for.body10.preheader, label %for.body.outer, !llvm.loop !14

for.end:                                          ; preds = %for.inc
  br i1 %1, label %for.body10.preheader, label %if.then6

for.body10.preheader:                             ; preds = %for.inc.thread, %for.end
  br label %for.body10

if.then6:                                         ; preds = %entry, %for.end
  %call7 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  br label %if.end22

for.body10:                                       ; preds = %for.body10.preheader, %for.inc19
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc19 ], [ 0, %for.body10.preheader ]
  %arrayidx12 = getelementptr inbounds nuw [26 x i32], ptr %counter, i64 0, i64 %indvars.iv
  %7 = load i32, ptr %arrayidx12, align 4, !tbaa !8
  %cmp13 = icmp sgt i32 %7, 0
  br i1 %cmp13, label %if.then14, label %for.inc19

if.then14:                                        ; preds = %for.body10
  %8 = trunc i64 %indvars.iv to i32
  %9 = add i32 %8, 97
  %call17 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %9, i32 noundef %7)
  br label %for.inc19

for.inc19:                                        ; preds = %for.body10, %if.then14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 26
  br i1 %exitcond.not, label %if.end22, label %for.body10, !llvm.loop !15

if.end22:                                         ; preds = %for.inc19, %if.then6
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %counter) #7
  call void @llvm.lifetime.end.p0(i64 301, ptr nonnull %str) #7
  ret i32 0
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
