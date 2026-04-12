; ModuleID = '<stdin>'
source_filename = "/tmp/tmp3kv2pypy.cpp"
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

; Function Attrs: mustprogress norecurse noreturn uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %l = alloca i32, align 4
  %a = alloca [15 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l) #5
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %a) #5
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond1.backedge, %entry
  %indvars.iv31 = phi i32 [ -1, %entry ], [ %indvars.iv31.be, %for.cond1.backedge ]
  %indvars.iv24 = phi i32 [ 0, %entry ], [ %indvars.iv24.be, %for.cond1.backedge ]
  %indvars.iv = phi i64 [ 1, %entry ], [ %indvars.iv.be, %for.cond1.backedge ]
  %exitcond.not = icmp eq i64 %indvars.iv, 17
  br i1 %exitcond.not, label %for.cond1.backedge, label %for.body

for.body:                                         ; preds = %for.cond1
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %l)
  %0 = load i32, ptr %l, align 4, !tbaa !5
  %cmp2.not = icmp eq i32 %0, 0
  br i1 %cmp2.not, label %for.cond4.preheader, label %if.then

for.cond4.preheader:                              ; preds = %for.body
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv31, i32 0)
  %wide.trip.count34 = zext nneg i32 %smax to i64
  %wide.trip.count = zext nneg i32 %indvars.iv24 to i64
  br label %for.cond4

if.then:                                          ; preds = %for.body
  %1 = add nsw i64 %indvars.iv, -1
  %arrayidx = getelementptr inbounds [15 x i32], ptr %a, i64 0, i64 %1
  store i32 %0, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next25 = add nuw nsw i32 %indvars.iv24, 1
  %indvars.iv.next32 = add nsw i32 %indvars.iv31, 1
  br label %for.cond1.backedge

for.cond1.backedge:                               ; preds = %if.then, %for.cond1, %for.end27
  %indvars.iv31.be = phi i32 [ %indvars.iv.next32, %if.then ], [ -1, %for.cond1 ], [ -1, %for.end27 ]
  %indvars.iv24.be = phi i32 [ %indvars.iv.next25, %if.then ], [ 0, %for.cond1 ], [ 0, %for.end27 ]
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %if.then ], [ 1, %for.cond1 ], [ 1, %for.end27 ]
  br label %for.cond1, !llvm.loop !9

for.cond4.loopexit:                               ; preds = %for.cond8
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond4, !llvm.loop !12

for.cond4:                                        ; preds = %for.cond4.loopexit, %for.cond4.preheader
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.cond4.loopexit ], [ 0, %for.cond4.preheader ]
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.cond4.loopexit ], [ 1, %for.cond4.preheader ]
  %t.0 = phi i32 [ %t.1, %for.cond4.loopexit ], [ 0, %for.cond4.preheader ]
  %exitcond35 = icmp eq i64 %indvars.iv28, %wide.trip.count34
  br i1 %exitcond35, label %for.end27, label %for.body7

for.body7:                                        ; preds = %for.cond4
  %arrayidx13 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv28
  br label %for.cond8

for.cond8:                                        ; preds = %for.body11, %for.body7
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.body11 ], [ %indvars.iv19, %for.body7 ]
  %t.1 = phi i32 [ %t.2, %for.body11 ], [ %t.0, %for.body7 ]
  %exitcond27 = icmp eq i64 %indvars.iv21, %wide.trip.count
  br i1 %exitcond27, label %for.cond4.loopexit, label %for.body11

for.body11:                                       ; preds = %for.cond8
  %2 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %arrayidx15 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv21
  %3 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %mul = shl nsw i32 %3, 1
  %cmp16 = icmp eq i32 %2, %mul
  %mul21 = shl nsw i32 %2, 1
  %cmp22 = icmp eq i32 %3, %mul21
  %or.cond = select i1 %cmp16, i1 true, i1 %cmp22
  %inc = zext i1 %or.cond to i32
  %t.2 = add nsw i32 %t.1, %inc
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond8, !llvm.loop !13

for.end27:                                        ; preds = %for.cond4
  %call28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %t.0)
  %vtable.i = load ptr, ptr %call28, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call28, i64 %vbase.offset.i
  %call.i14 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call28, i8 noundef signext %call.i14)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  br label %for.cond1.backedge
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
