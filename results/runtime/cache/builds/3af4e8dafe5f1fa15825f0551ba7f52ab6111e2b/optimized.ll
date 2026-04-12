; ModuleID = '<stdin>'
source_filename = "/tmp/tmpvdu28c3q.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %b = alloca [100 x [100 x i32]], align 16
  %c = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #5
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %c) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup4, %entry
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.cond.cleanup4 ], [ 0, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv29, %1
  br i1 %cmp, label %for.cond2, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call13 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call12, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  br label %for.cond14

for.cond2:                                        ; preds = %for.cond, %for.body5
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ 0, %for.cond ]
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp3 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp3, label %for.body5, label %for.cond.cleanup4

for.cond.cleanup4:                                ; preds = %for.cond2
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond, !llvm.loop !9

for.body5:                                        ; preds = %for.cond2
  %arrayidx7 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv29, i64 %indvars.iv
  %call8 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx7)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !12

for.cond14:                                       ; preds = %for.cond.cleanup20, %for.cond.cleanup
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.cond.cleanup20 ], [ 0, %for.cond.cleanup ]
  %4 = load i32, ptr %x2, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp15 = icmp slt i64 %indvars.iv35, %5
  br i1 %cmp15, label %for.cond18, label %for.cond33.preheader

for.cond33.preheader:                             ; preds = %for.cond14
  %6 = load i32, ptr %x1, align 4, !tbaa !5
  %7 = load i32, ptr %y2, align 4
  %8 = load i32, ptr %y1, align 4
  %smax = call i32 @llvm.smax.i32(i32 %8, i32 0)
  %smax44 = call i32 @llvm.smax.i32(i32 %7, i32 0)
  %smax50 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %wide.trip.count51 = zext nneg i32 %smax50 to i64
  %wide.trip.count45 = zext nneg i32 %smax44 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond33

for.cond18:                                       ; preds = %for.cond14, %for.body21
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.body21 ], [ 0, %for.cond14 ]
  %9 = load i32, ptr %y2, align 4, !tbaa !5
  %10 = sext i32 %9 to i64
  %cmp19 = icmp slt i64 %indvars.iv32, %10
  br i1 %cmp19, label %for.body21, label %for.cond.cleanup20

for.cond.cleanup20:                               ; preds = %for.cond18
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond14, !llvm.loop !13

for.body21:                                       ; preds = %for.cond18
  %arrayidx25 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv35, i64 %indvars.iv32
  %call26 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx25)
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond18, !llvm.loop !14

for.cond33:                                       ; preds = %for.cond33.preheader, %for.cond.cleanup39
  %indvars.iv47 = phi i64 [ 0, %for.cond33.preheader ], [ %indvars.iv.next48, %for.cond.cleanup39 ]
  %exitcond52.not = icmp eq i64 %indvars.iv47, %wide.trip.count51
  br i1 %exitcond52.not, label %for.cond70, label %for.cond37

for.cond37:                                       ; preds = %for.cond33, %for.cond.cleanup47
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %for.cond.cleanup47 ], [ 0, %for.cond33 ]
  %exitcond46.not = icmp eq i64 %indvars.iv41, %wide.trip.count45
  br i1 %exitcond46.not, label %for.cond.cleanup39, label %for.body40

for.cond.cleanup39:                               ; preds = %for.cond37
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br label %for.cond33, !llvm.loop !15

for.body40:                                       ; preds = %for.cond37
  %arrayidx44 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv47, i64 %indvars.iv41
  store i32 0, ptr %arrayidx44, align 4, !tbaa !5
  br label %for.cond45

for.cond45:                                       ; preds = %for.body48, %for.body40
  %11 = phi i32 [ %add, %for.body48 ], [ 0, %for.body40 ]
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.body48 ], [ 0, %for.body40 ]
  %exitcond.not = icmp eq i64 %indvars.iv38, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup47, label %for.body48

for.cond.cleanup47:                               ; preds = %for.cond45
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond37, !llvm.loop !16

for.body48:                                       ; preds = %for.cond45
  %arrayidx52 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv47, i64 %indvars.iv38
  %12 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %arrayidx56 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv38, i64 %indvars.iv41
  %13 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %mul = mul nsw i32 %13, %12
  %add = add nsw i32 %11, %mul
  store i32 %add, ptr %arrayidx44, align 4, !tbaa !5
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond45, !llvm.loop !17

for.cond70:                                       ; preds = %for.cond33, %for.cond.cleanup76
  %14 = phi i32 [ %.pre, %for.cond.cleanup76 ], [ %6, %for.cond33 ]
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %for.cond.cleanup76 ], [ 0, %for.cond33 ]
  %15 = sext i32 %14 to i64
  %cmp71 = icmp slt i64 %indvars.iv56, %15
  br i1 %cmp71, label %for.cond74, label %for.cond.cleanup72

for.cond.cleanup72:                               ; preds = %for.cond70
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #5
  ret i32 0

for.cond74:                                       ; preds = %for.cond70, %for.body77
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.body77 ], [ 0, %for.cond70 ]
  %16 = load i32, ptr %y2, align 4, !tbaa !5
  %sub = add nsw i32 %16, -1
  %17 = sext i32 %sub to i64
  %cmp75 = icmp slt i64 %indvars.iv53, %17
  br i1 %cmp75, label %for.body77, label %for.cond.cleanup76

for.cond.cleanup76:                               ; preds = %for.cond74
  %arrayidx91 = getelementptr inbounds [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv56, i64 %17
  %18 = load i32, ptr %arrayidx91, align 4, !tbaa !5
  %call92 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %18)
  %vtable.i = load ptr, ptr %call92, align 8, !tbaa !18
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call92, i64 %vbase.offset.i
  %call.i25 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call92, i8 noundef signext %call.i25)
  %call.i.i27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i26)
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond70, !llvm.loop !20

for.body77:                                       ; preds = %for.cond74
  %arrayidx81 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv56, i64 %indvars.iv53
  %19 = load i32, ptr %arrayidx81, align 4, !tbaa !5
  %call82 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %19)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call82, ptr noundef nonnull @.str, i64 noundef 1)
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %for.cond74, !llvm.loop !21
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = !{!19, !19, i64 0}
!19 = !{!"vtable pointer", !8, i64 0}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
