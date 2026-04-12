; ModuleID = '<stdin>'
source_filename = "/tmp/tmpj8bqy1cw.cpp"
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
  %a = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %a) #5
  br label %while.cond1

while.cond1:                                      ; preds = %while.cond1.backedge, %entry
  %indvars.iv24 = phi i32 [ -1, %entry ], [ %indvars.iv24.be, %while.cond1.backedge ]
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.be, %while.cond1.backedge ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  %1 = load i32, ptr %a, align 16
  %cmp6 = icmp eq i32 %1, -1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp6
  %indvars.iv.next25 = add nsw i32 %indvars.iv24, 1
  br i1 %or.cond, label %while.end, label %while.cond1.backedge

while.cond1.backedge:                             ; preds = %while.cond1, %for.end35
  %indvars.iv24.be = phi i32 [ %indvars.iv.next25, %while.cond1 ], [ -1, %for.end35 ]
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %while.cond1 ], [ 0, %for.end35 ]
  br label %while.cond1, !llvm.loop !9

while.end:                                        ; preds = %while.cond1
  br i1 %cmp6, label %while.end38, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.end
  %2 = and i64 %indvars.iv, 4294967295
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv24, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond.loopexit:                                ; preds = %for.cond14
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond, !llvm.loop !12

for.cond:                                         ; preds = %for.cond.loopexit, %for.cond.preheader
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.cond.loopexit ], [ 0, %for.cond.preheader ]
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for.cond.loopexit ], [ 1, %for.cond.preheader ]
  %count.0 = phi i32 [ %count.1, %for.cond.loopexit ], [ 0, %for.cond.preheader ]
  %exitcond.not = icmp eq i64 %indvars.iv21, %wide.trip.count
  br i1 %exitcond.not, label %for.end35, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx18 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv21
  br label %for.cond14

for.cond14:                                       ; preds = %for.body16, %for.body
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.body16 ], [ %indvars.iv16, %for.body ]
  %count.1 = phi i32 [ %count.2, %for.body16 ], [ %count.0, %for.body ]
  %cmp15 = icmp samesign ult i64 %indvars.iv18, %2
  br i1 %cmp15, label %for.body16, label %for.cond.loopexit

for.body16:                                       ; preds = %for.cond14
  %3 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %mul = shl nsw i32 %3, 1
  %arrayidx20 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv18
  %4 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %cmp21 = icmp eq i32 %mul, %4
  %mul25 = shl nsw i32 %4, 1
  %cmp28 = icmp eq i32 %mul25, %3
  %or.cond13 = select i1 %cmp21, i1 true, i1 %cmp28
  %inc30 = zext i1 %or.cond13 to i32
  %count.2 = add nsw i32 %count.1, %inc30
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond14, !llvm.loop !13

for.end35:                                        ; preds = %for.cond
  %call36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %count.0)
  %vtable.i = load ptr, ptr %call36, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call36, i64 %vbase.offset.i
  %call.i14 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call36, i8 noundef signext %call.i14)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  br label %while.cond1.backedge

while.end38:                                      ; preds = %while.end
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %a) #5
  ret i32 0
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
