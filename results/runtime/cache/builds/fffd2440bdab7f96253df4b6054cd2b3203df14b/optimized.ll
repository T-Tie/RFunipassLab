; ModuleID = '<stdin>'
source_filename = "/tmp/tmpsfdm7t8m.cpp"
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
  %a = alloca [15 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %a) #5
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %vtable = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt3cin, i64 32), i64 %vbase.offset
  %0 = load i32, ptr %gep, align 8, !tbaa !8
  %and.i.i.i = and i32 %0, 5
  %cmp.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.not.i, label %for.cond, label %cleanup70

for.cond:                                         ; preds = %while.cond, %for.inc63
  %indvars.iv47 = phi i32 [ %indvars.iv.next48, %for.inc63 ], [ 0, %while.cond ]
  %indvars.iv41 = phi i32 [ %indvars.iv.next42, %for.inc63 ], [ -1, %while.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc63 ], [ 0, %while.cond ]
  %arrayidx = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %vtable2 = load ptr, ptr %call1, align 8, !tbaa !5
  %vbase.offset.ptr3 = getelementptr i8, ptr %vtable2, i64 -24
  %vbase.offset4 = load i64, ptr %vbase.offset.ptr3, align 8
  %add.ptr5 = getelementptr inbounds i8, ptr %call1, i64 %vbase.offset4
  %_M_streambuf_state.i.i.i27 = getelementptr inbounds nuw i8, ptr %add.ptr5, i64 32
  %1 = load i32, ptr %_M_streambuf_state.i.i.i27, align 8, !tbaa !8
  %and.i.i.i28 = and i32 %1, 5
  %cmp.i.not.i29 = icmp eq i32 %and.i.i.i28, 0
  br i1 %cmp.i.not.i29, label %for.body, label %while.cond.backedge, !llvm.loop !21

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !24
  switch i32 %2, label %for.inc63 [
    i32 -1, label %cleanup70
    i32 0, label %for.cond13.preheader
  ]

for.cond13.preheader:                             ; preds = %for.body
  %umax = call i32 @llvm.umax.i32(i32 %indvars.iv47, i32 1)
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc35
  %indvars.iv45 = phi i32 [ %indvars.iv41, %for.cond13.preheader ], [ %indvars.iv.next46, %for.inc35 ]
  %j.0 = phi i32 [ 1, %for.cond13.preheader ], [ %inc36, %for.inc35 ]
  %exitcond51.not = icmp eq i32 %j.0, %umax
  br i1 %exitcond51.not, label %for.cond38.preheader, label %for.cond16.preheader

for.cond38.preheader:                             ; preds = %for.cond13
  %wide.trip.count66 = zext i32 %indvars.iv47 to i64
  br label %for.cond38

for.cond16.preheader:                             ; preds = %for.cond13
  %wide.trip.count = zext i32 %indvars.iv45 to i64
  br label %for.cond16

for.cond16:                                       ; preds = %for.cond16.backedge, %for.cond16.preheader
  %indvars.iv38 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next39, %for.cond16.backedge ]
  %exitcond.not = icmp eq i64 %indvars.iv38, %wide.trip.count
  br i1 %exitcond.not, label %for.inc35, label %for.body18

for.body18:                                       ; preds = %for.cond16
  %arrayidx20 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv38
  %3 = load i32, ptr %arrayidx20, align 4, !tbaa !24
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %arrayidx22 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv.next39
  %4 = load i32, ptr %arrayidx22, align 4, !tbaa !24
  %cmp23 = icmp sgt i32 %3, %4
  br i1 %cmp23, label %if.then24, label %for.cond16.backedge

for.cond16.backedge:                              ; preds = %for.body18, %if.then24
  br label %for.cond16, !llvm.loop !25

if.then24:                                        ; preds = %for.body18
  store i32 %4, ptr %arrayidx20, align 4, !tbaa !24
  store i32 %3, ptr %arrayidx22, align 4, !tbaa !24
  br label %for.cond16.backedge

for.inc35:                                        ; preds = %for.cond16
  %inc36 = add nuw i32 %j.0, 1
  %indvars.iv.next46 = add nsw i32 %indvars.iv45, -1
  br label %for.cond13, !llvm.loop !26

for.cond38.loopexit:                              ; preds = %for.cond42
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  br label %for.cond38, !llvm.loop !27

for.cond38:                                       ; preds = %for.cond38.preheader, %for.cond38.loopexit
  %indvars.iv61 = phi i64 [ 0, %for.cond38.preheader ], [ %indvars.iv.next62, %for.cond38.loopexit ]
  %indvars.iv52 = phi i64 [ 1, %for.cond38.preheader ], [ %indvars.iv.next53, %for.cond38.loopexit ]
  %num.0 = phi i32 [ 0, %for.cond38.preheader ], [ %num.1, %for.cond38.loopexit ]
  %exitcond67.not = icmp eq i64 %indvars.iv61, %wide.trip.count66
  br i1 %exitcond67.not, label %for.end58, label %for.body40

for.body40:                                       ; preds = %for.cond38
  %arrayidx46 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv61
  br label %for.cond42

for.cond42:                                       ; preds = %for.body44, %for.body40
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %for.body44 ], [ %indvars.iv52, %for.body40 ]
  %num.1 = phi i32 [ %spec.select, %for.body44 ], [ %num.0, %for.body40 ]
  %exitcond60.not = icmp eq i64 %indvars.iv54, %wide.trip.count66
  br i1 %exitcond60.not, label %for.cond38.loopexit, label %for.body44

for.body44:                                       ; preds = %for.cond42
  %5 = load i32, ptr %arrayidx46, align 4, !tbaa !24
  %mul = shl nsw i32 %5, 1
  %arrayidx48 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv54
  %6 = load i32, ptr %arrayidx48, align 4, !tbaa !24
  %cmp49 = icmp eq i32 %mul, %6
  %inc51 = zext i1 %cmp49 to i32
  %spec.select = add nsw i32 %num.1, %inc51
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %for.cond42, !llvm.loop !28

for.end58:                                        ; preds = %for.cond38
  %call59 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %num.0)
  %vtable.i = load ptr, ptr %call59, align 8, !tbaa !5
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call59, i64 %vbase.offset.i
  %call.i30 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call59, i8 noundef signext %call.i30)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %for.cond, %for.end58
  br label %while.cond, !llvm.loop !21

for.inc63:                                        ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next42 = add nsw i32 %indvars.iv41, 1
  %indvars.iv.next48 = add nuw i32 %indvars.iv47, 1
  br label %for.cond, !llvm.loop !29

cleanup70:                                        ; preds = %while.cond, %for.body
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %a) #5
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
declare i32 @llvm.umax.i32(i32, i32) #4

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
!6 = !{!"vtable pointer", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !13, i64 32}
!9 = !{!"_ZTSSt8ios_base", !10, i64 8, !10, i64 16, !12, i64 24, !13, i64 28, !13, i64 32, !14, i64 40, !16, i64 48, !11, i64 64, !17, i64 192, !18, i64 200, !19, i64 208}
!10 = !{!"long", !11, i64 0}
!11 = !{!"omnipotent char", !7, i64 0}
!12 = !{!"_ZTSSt13_Ios_Fmtflags", !11, i64 0}
!13 = !{!"_ZTSSt12_Ios_Iostate", !11, i64 0}
!14 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !15, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"_ZTSNSt8ios_base6_WordsE", !15, i64 0, !10, i64 8}
!17 = !{!"int", !11, i64 0}
!18 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !15, i64 0}
!19 = !{!"_ZTSSt6locale", !20, i64 0}
!20 = !{!"p1 _ZTSNSt6locale5_ImplE", !15, i64 0}
!21 = distinct !{!21, !22, !23}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = !{!17, !17, i64 0}
!25 = distinct !{!25, !22, !23}
!26 = distinct !{!26, !22, !23}
!27 = distinct !{!27, !22, !23}
!28 = distinct !{!28, !22, !23}
!29 = distinct !{!29, !22, !23}
