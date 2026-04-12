; ModuleID = '<stdin>'
source_filename = "/tmp/tmp5sj975y_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [2000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %a) #5
  br label %while.cond1

while.cond1:                                      ; preds = %while.cond1.backedge, %entry
  %indvars.iv19 = phi i32 [ 0, %entry ], [ %indvars.iv19.be, %while.cond1.backedge ]
  %indvars.iv = phi i64 [ 1, %entry ], [ %indvars.iv.be, %while.cond1.backedge ]
  %flag.0 = phi i32 [ 1, %entry ], [ %flag.0.be, %while.cond1.backedge ]
  %cmp = icmp eq i32 %flag.0, 1
  br i1 %cmp, label %while.body2, label %while.end

while.body2:                                      ; preds = %while.cond1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds nuw [2000 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  switch i32 %0, label %if.end11.fold.split [
    i32 0, label %if.end11
    i32 -1, label %if.then10
  ]

if.then10:                                        ; preds = %while.body2
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %a) #5
  ret i32 0

if.end11.fold.split:                              ; preds = %while.body2
  br label %if.end11

if.end11:                                         ; preds = %while.body2, %if.end11.fold.split
  %flag.1 = phi i32 [ %0, %while.body2 ], [ 1, %if.end11.fold.split ]
  %indvars.iv.next20 = add nuw nsw i32 %indvars.iv19, 1
  br label %while.cond1.backedge

while.cond1.backedge:                             ; preds = %if.end11, %for.end33
  %indvars.iv19.be = phi i32 [ %indvars.iv.next20, %if.end11 ], [ 0, %for.end33 ]
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %if.end11 ], [ 1, %for.end33 ]
  %flag.0.be = phi i32 [ %flag.1, %if.end11 ], [ 1, %for.end33 ]
  br label %while.cond1, !llvm.loop !9

while.end:                                        ; preds = %while.cond1
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv19, i32 1)
  %wide.trip.count27 = zext nneg i32 %smax to i64
  %wide.trip.count = zext nneg i32 %indvars.iv19 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %while.end
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.inc31 ], [ 1, %while.end ]
  %t.0 = phi i32 [ %t.3, %for.inc31 ], [ 0, %while.end ]
  %exitcond28.not = icmp eq i64 %indvars.iv22, %wide.trip.count27
  br i1 %exitcond28.not, label %for.end33, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx15 = getelementptr inbounds nuw [2000 x i32], ptr %a, i64 0, i64 %indvars.iv22
  %1 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %2 = and i32 %1, 1
  %cmp16 = icmp eq i32 %2, 0
  br i1 %cmp16, label %for.cond18, label %for.inc31

for.cond18:                                       ; preds = %for.body, %for.body20
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for.body20 ], [ 1, %for.body ]
  %t.1 = phi i32 [ %spec.select, %for.body20 ], [ %t.0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv16, %wide.trip.count
  br i1 %exitcond.not, label %for.inc31, label %for.body20

for.body20:                                       ; preds = %for.cond18
  %arrayidx22 = getelementptr inbounds nuw [2000 x i32], ptr %a, i64 0, i64 %indvars.iv16
  %3 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %mul = shl nsw i32 %3, 1
  %cmp25 = icmp eq i32 %mul, %1
  %inc27 = zext i1 %cmp25 to i32
  %spec.select = add nsw i32 %t.1, %inc27
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond18, !llvm.loop !12

for.inc31:                                        ; preds = %for.cond18, %for.body
  %t.3 = phi i32 [ %t.0, %for.body ], [ %t.1, %for.cond18 ]
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond, !llvm.loop !13

for.end33:                                        ; preds = %for.cond
  %call34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %t.0)
  %vtable.i = load ptr, ptr %call34, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call34, i64 %vbase.offset.i
  %call.i12 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call34, i8 noundef signext %call.i12)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  br label %while.cond1.backedge
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!15 = !{!"vtable pointer", !8, i64 0}
