; ModuleID = '<stdin>'
source_filename = "/tmp/tmpzw_yrf2m.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [30 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %a) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [30 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call2 = call noundef i32 @_Z1fPii(ptr noundef nonnull %a, i32 noundef %0)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %call2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %a) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, -2147483648) i32 @_Z1fPii(ptr noundef %a, i32 noundef %n) local_unnamed_addr #3 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %if.else, %entry
  %accumulator.tr = phi i32 [ -2147483648, %entry ], [ %cond.i, %if.else ]
  %a.tr = phi ptr [ %a, %entry ], [ %add.ptr, %if.else ]
  %n.tr = phi i32 [ %n, %entry ], [ %sub, %if.else ]
  %cmp = icmp eq i32 %n.tr, 0
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %tailrecurse
  %add.ptr = getelementptr inbounds nuw i8, ptr %a.tr, i64 4
  %sub = add nsw i32 %n.tr, -1
  %0 = load i32, ptr %a.tr, align 4, !tbaa !5
  %call = tail call noundef i32 @_Z1gPiii(ptr noundef nonnull %add.ptr, i32 noundef %sub, i32 noundef %0)
  %add = add nsw i32 %call, 1
  %cond.i = tail call noundef i32 @llvm.smax.i32(i32 %add, i32 %accumulator.tr)
  br label %tailrecurse

return:                                           ; preds = %tailrecurse
  %accumulator.ret.tr = tail call noundef i32 @llvm.smax.i32(i32 %accumulator.tr, i32 0)
  ret i32 %accumulator.ret.tr
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z3maxii(i32 noundef %x, i32 noundef %y) local_unnamed_addr #5 {
entry:
  %cond = tail call i32 @llvm.smax.i32(i32 %x, i32 %y)
  ret i32 %cond
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 -2147483647, -2147483648) i32 @_Z1gPiii(ptr noundef %a, i32 noundef %n, i32 noundef %b) local_unnamed_addr #3 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %if.else6, %entry
  %a.tr = phi ptr [ %a, %entry ], [ %add.ptr, %if.else6 ]
  %n.tr = phi i32 [ %n, %entry ], [ %sub, %if.else6 ]
  switch i32 %n.tr, label %if.else6 [
    i32 0, label %common.ret37
    i32 1, label %if.then2
  ]

if.then2:                                         ; preds = %tailrecurse
  %0 = load i32, ptr %a.tr, align 4, !tbaa !5
  %cmp3 = icmp sle i32 %0, %b
  %. = zext i1 %cmp3 to i32
  br label %common.ret37

if.else6:                                         ; preds = %tailrecurse
  %1 = load i32, ptr %a.tr, align 4, !tbaa !5
  %cmp8 = icmp sgt i32 %1, %b
  %add.ptr = getelementptr inbounds nuw i8, ptr %a.tr, i64 4
  %sub = add nsw i32 %n.tr, -1
  br i1 %cmp8, label %tailrecurse, label %if.else10

common.ret37:                                     ; preds = %if.then2, %tailrecurse, %if.else10
  %common.ret37.op = phi i32 [ %cond.i, %if.else10 ], [ %., %if.then2 ], [ %n.tr, %tailrecurse ]
  ret i32 %common.ret37.op

if.else10:                                        ; preds = %if.else6
  %call13 = tail call noundef i32 @_Z1gPiii(ptr noundef nonnull %add.ptr, i32 noundef %sub, i32 noundef %b)
  %call17 = tail call noundef i32 @_Z1gPiii(ptr noundef nonnull %add.ptr, i32 noundef %sub, i32 noundef %1)
  %add = add nsw i32 %call17, 1
  %cond.i = tail call noundef i32 @llvm.smax.i32(i32 %call13, i32 %add)
  br label %common.ret37
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
