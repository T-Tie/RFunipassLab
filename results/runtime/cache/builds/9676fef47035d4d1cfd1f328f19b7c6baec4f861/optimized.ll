; ModuleID = '<stdin>'
source_filename = "/tmp/tmps4qd6wdl.cpp"
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
  %a = alloca [150 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 600, ptr nonnull %a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(600) %a, i8 0, i64 600, i1 false)
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond1.backedge, %entry
  %indvars.iv15 = phi i32 [ 0, %entry ], [ %indvars.iv15.be, %for.cond1.backedge ]
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.be, %for.cond1.backedge ]
  %arrayidx = getelementptr inbounds nuw [150 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next16 = add nuw i32 %indvars.iv15, 1
  br i1 %cmp, label %for.cond4.preheader, label %for.cond1.backedge

for.cond1.backedge:                               ; preds = %for.cond1, %if.then25
  %indvars.iv15.be = phi i32 [ %indvars.iv.next16, %for.cond1 ], [ 0, %if.then25 ]
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %for.cond1 ], [ 0, %if.then25 ]
  br label %for.cond1, !llvm.loop !9

for.cond4.preheader:                              ; preds = %for.cond1
  %wide.trip.count21 = zext i32 %indvars.iv15 to i64
  br label %for.cond4

for.cond4:                                        ; preds = %for.cond4.preheader, %for.inc20
  %indvars.iv17 = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next18, %for.inc20 ]
  %num.0 = phi i32 [ 0, %for.cond4.preheader ], [ %num.1, %for.inc20 ]
  %exitcond22.not = icmp eq i64 %indvars.iv17, %wide.trip.count21
  br i1 %exitcond22.not, label %for.end22, label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.cond4
  %arrayidx10 = getelementptr inbounds nuw [150 x i32], ptr %a, i64 0, i64 %indvars.iv17
  %1 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.cond6.preheader, %for.body8
  %indvars.iv12 = phi i64 [ 0, %for.cond6.preheader ], [ %indvars.iv.next13, %for.body8 ]
  %num.1 = phi i32 [ %num.0, %for.cond6.preheader ], [ %spec.select, %for.body8 ]
  %exitcond.not = icmp eq i64 %indvars.iv12, %wide.trip.count21
  br i1 %exitcond.not, label %for.inc20, label %for.body8

for.body8:                                        ; preds = %for.cond6
  %arrayidx12 = getelementptr inbounds nuw [150 x i32], ptr %a, i64 0, i64 %indvars.iv12
  %2 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %mul = shl nsw i32 %2, 1
  %cmp13 = icmp eq i32 %1, %mul
  %inc15 = zext i1 %cmp13 to i32
  %spec.select = add nsw i32 %num.1, %inc15
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %for.cond6, !llvm.loop !12

for.inc20:                                        ; preds = %for.cond6
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  br label %for.cond4, !llvm.loop !13

for.end22:                                        ; preds = %for.cond4
  %3 = load i32, ptr %a, align 16, !tbaa !5
  %cmp24.not = icmp eq i32 %3, -1
  br i1 %cmp24.not, label %for.end29, label %if.then25

if.then25:                                        ; preds = %for.end22
  %call26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %num.0)
  %vtable.i = load ptr, ptr %call26, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call26, i64 %vbase.offset.i
  %call.i10 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call26, i8 noundef signext %call.i10)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  br label %for.cond1.backedge

for.end29:                                        ; preds = %for.end22
  call void @llvm.lifetime.end.p0(i64 600, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
