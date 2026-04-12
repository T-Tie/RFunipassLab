; ModuleID = '<stdin>'
source_filename = "/tmp/tmpc9zjk96c.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %c = alloca [100 x [100 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 10000, ptr nonnull %c) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10000) %c, i8 0, i64 10000, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %j.0 = phi i32 [ 0, %entry ], [ %j.1, %for.inc ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc14, %for.inc ]
  %0 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i = tail call i32 @getc(ptr noundef %0)
  %conv = trunc i32 %call.i to i8
  %idxprom = sext i32 %j.0 to i64
  %idxprom1 = sext i32 %i.0 to i64
  %arrayidx2 = getelementptr inbounds [100 x [100 x i8]], ptr %c, i64 0, i64 %idxprom, i64 %idxprom1
  store i8 %conv, ptr %arrayidx2, align 1, !tbaa !10
  %sext = shl i32 %call.i, 24
  %conv3 = ashr exact i32 %sext, 24
  switch i32 %conv3, label %for.inc [
    i32 10, label %for.end
    i32 32, label %if.then
  ]

if.then:                                          ; preds = %for.cond
  store i8 0, ptr %arrayidx2, align 1, !tbaa !10
  %inc = add nsw i32 %j.0, 1
  br label %for.inc

for.inc:                                          ; preds = %for.cond, %if.then
  %j.1 = phi i32 [ %inc, %if.then ], [ %j.0, %for.cond ]
  %i.1 = phi i32 [ -1, %if.then ], [ %i.0, %for.cond ]
  %inc14 = add nsw i32 %i.1, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  store i8 0, ptr %arrayidx2, align 1, !tbaa !10
  %1 = zext i32 %j.0 to i64
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc26, %for.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc26 ], [ %1, %for.end ]
  %2 = trunc nuw i64 %indvars.iv to i32
  %cmp20 = icmp sgt i32 %2, 0
  br i1 %cmp20, label %for.inc26, label %for.end27

for.inc26:                                        ; preds = %for.cond19
  %arrayidx23 = getelementptr inbounds nuw [100 x [100 x i8]], ptr %c, i64 0, i64 %indvars.iv
  %call25 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %arrayidx23)
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br label %for.cond19, !llvm.loop !14

for.end27:                                        ; preds = %for.cond19
  %call30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %c)
  call void @llvm.lifetime.end.p0(i64 10000, ptr nonnull %c) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @getc(ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 _ZTS8_IO_FILE", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
