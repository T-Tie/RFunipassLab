; ModuleID = '<stdin>'
source_filename = "/tmp/tmpglrniazw.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse noreturn uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %str = alloca [301 x i8], align 16
  %counter = alloca [26 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 301, ptr noundef nonnull align 16 %str) #8
  call void @llvm.lifetime.start.p0(i64 noundef 104, ptr noundef nonnull align 16 %counter) #8
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 16 %str)
  %call2 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #9
  %conv = trunc i64 %call2 to i32
  %smax = call i32 @llvm.smax.i32(i32 %conv, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %no.0 = phi i32 [ %no.1, %for.inc ], [ 1, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond11.preheader, label %for.body

for.cond11.preheader:                             ; preds = %for.cond
  br label %for.cond11

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [301 x i8], ptr %str, i64 0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5, !invariant.load !8
  %1 = add i8 %0, -97
  %or.cond = icmp ult i8 %1, 26
  br i1 %or.cond, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %no.1 = phi i32 [ 0, %if.then ], [ %no.0, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond11:                                       ; preds = %for.cond11.preheader
  br label %for.body14

for.body14:                                       ; preds = %for.cond11
  unreachable

if.then20:                                        ; No predecessors!
  unreachable

for.inc28:                                        ; No predecessors!
  unreachable

for.end30:                                        ; No predecessors!
  unreachable

if.then31:                                        ; No predecessors!
  unreachable

if.end33:                                         ; No predecessors!
  unreachable
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
  call void @llvm.lifetime.start.p0(i64 noundef 301, ptr noundef nonnull align 16 %str) #10
  call void @llvm.lifetime.start.p0(i64 noundef 104, ptr noundef nonnull align 16 %counter) #10
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 16 %str)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %p.0 = phi ptr [ %str, %entry ], [ %incdec.ptr, %for.inc ]
  %no.0 = phi i32 [ 1, %entry ], [ %no.1, %for.inc ]
  %0 = load i8, ptr %p.0, align 1, !tbaa !5
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %1 = add i8 %0, -97
  %or.cond = icmp ult i8 %1, 26
  br i1 %or.cond, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %no.1 = phi i32 [ 0, %if.then ], [ %no.0, %for.body ]
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %p.0, i64 1
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %tobool5.not = icmp eq i32 %no.0, 0
  br i1 %tobool5.not, label %for.cond8, label %if.then6

if.then6:                                         ; preds = %for.end
  %call7 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2) #11
  br label %if.end22

for.cond8:                                        ; preds = %for.end
  br label %for.body10

for.body10:                                       ; preds = %for.cond8
  unreachable

if.then14:                                        ; No predecessors!
  unreachable

for.inc19:                                        ; No predecessors!
  unreachable

if.end22:                                         ; preds = %if.then6
  call void @llvm.lifetime.end.p0(i64 noundef 104, ptr noundef nonnull %counter) #11
  call void @llvm.lifetime.end.p0(i64 noundef 301, ptr noundef nonnull %str) #11
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress norecurse noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind willreturn }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }

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
!8 = !{}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
