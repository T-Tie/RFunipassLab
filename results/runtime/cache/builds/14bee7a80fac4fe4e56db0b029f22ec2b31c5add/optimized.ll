; ModuleID = '<stdin>'
source_filename = "/tmp/tmpkh59ez4e.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@n = dso_local global i32 0, align 4
@A = dso_local global [111 x [111 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress uwtable
define dso_local void @_Z3sumv() local_unnamed_addr #0 {
entry:
  %.pre = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup3, %entry
  %0 = phi i32 [ %3, %for.cond.cleanup3 ], [ %.pre, %entry ]
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %for.cond.cleanup3 ], [ 0, %entry ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv54, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %2 = zext i32 %0 to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.body4
  %3 = phi i32 [ %.pre109, %for.body4 ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond ]
  %4 = sext i32 %3 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp2, label %for.body4, label %for.cond.cleanup3

for.cond.cleanup3:                                ; preds = %for.cond1
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %for.cond, !llvm.loop !9

for.body4:                                        ; preds = %for.cond1
  %arrayidx6 = getelementptr inbounds nuw [111 x [111 x i32]], ptr @A, i64 0, i64 %indvars.iv54, i64 %indvars.iv
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre109 = load i32, ptr @n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.cond.cleanup120
  %indvars.iv106 = phi i64 [ %2, %for.cond10.preheader ], [ %indvars.iv.next107, %for.cond.cleanup120 ]
  %S.0 = phi i32 [ 0, %for.cond10.preheader ], [ %add, %for.cond.cleanup120 ]
  %5 = trunc nuw i64 %indvars.iv106 to i32
  %cmp11 = icmp sgt i32 %5, 1
  br i1 %cmp11, label %for.cond15, label %for.cond.cleanup12

for.cond.cleanup12:                               ; preds = %for.cond10
  %call144 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %S.0)
  %vtable.i = load ptr, ptr %call144, align 8, !tbaa !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call144, i64 %vbase.offset.i
  %call.i52 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call144, i8 noundef signext %call.i52)
  %call.i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  ret void

for.cond15:                                       ; preds = %for.cond10, %for.cond.cleanup39
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %for.cond.cleanup39 ], [ 0, %for.cond10 ]
  %exitcond69.not = icmp eq i64 %indvars.iv65, %indvars.iv106
  br i1 %exitcond69.not, label %for.cond52, label %for.cond20

for.cond20:                                       ; preds = %for.cond15, %for.body23
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %for.body23 ], [ 0, %for.cond15 ]
  %min.0 = phi i32 [ %spec.select, %for.body23 ], [ 999999, %for.cond15 ]
  %exitcond.not = icmp eq i64 %indvars.iv57, %indvars.iv106
  br i1 %exitcond.not, label %for.cond37, label %for.body23

for.body23:                                       ; preds = %for.cond20
  %arrayidx27 = getelementptr inbounds nuw [111 x [111 x i32]], ptr @A, i64 0, i64 %indvars.iv65, i64 %indvars.iv57
  %6 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %6, i32 %min.0)
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  br label %for.cond20, !llvm.loop !15

for.cond37:                                       ; preds = %for.cond20, %for.body40
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %for.body40 ], [ 0, %for.cond20 ]
  %exitcond64.not = icmp eq i64 %indvars.iv60, %indvars.iv106
  br i1 %exitcond64.not, label %for.cond.cleanup39, label %for.body40

for.cond.cleanup39:                               ; preds = %for.cond37
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  br label %for.cond15, !llvm.loop !16

for.body40:                                       ; preds = %for.cond37
  %arrayidx44 = getelementptr inbounds nuw [111 x [111 x i32]], ptr @A, i64 0, i64 %indvars.iv65, i64 %indvars.iv60
  %7 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %sub = sub nsw i32 %7, %min.0
  store i32 %sub, ptr %arrayidx44, align 4, !tbaa !5
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  br label %for.cond37, !llvm.loop !17

for.cond52:                                       ; preds = %for.cond15, %for.cond.cleanup79
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %for.cond.cleanup79 ], [ 0, %for.cond15 ]
  %exitcond84.not = icmp eq i64 %indvars.iv80, %indvars.iv106
  br i1 %exitcond84.not, label %for.cond.cleanup54, label %for.cond58

for.cond.cleanup54:                               ; preds = %for.cond52
  %8 = load i32, ptr getelementptr inbounds nuw (i8, ptr @A, i64 448), align 16, !tbaa !5
  br label %for.cond93

for.cond58:                                       ; preds = %for.cond52, %for.body61
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.body61 ], [ 0, %for.cond52 ]
  %min56.0 = phi i32 [ %spec.select51, %for.body61 ], [ 999999, %for.cond52 ]
  %exitcond74.not = icmp eq i64 %indvars.iv70, %indvars.iv106
  br i1 %exitcond74.not, label %for.cond77, label %for.body61

for.body61:                                       ; preds = %for.cond58
  %arrayidx65 = getelementptr inbounds nuw [111 x [111 x i32]], ptr @A, i64 0, i64 %indvars.iv70, i64 %indvars.iv80
  %9 = load i32, ptr %arrayidx65, align 4, !tbaa !5
  %spec.select51 = tail call i32 @llvm.smin.i32(i32 %9, i32 %min56.0)
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %for.cond58, !llvm.loop !18

for.cond77:                                       ; preds = %for.cond58, %for.body80
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %for.body80 ], [ 0, %for.cond58 ]
  %exitcond79.not = icmp eq i64 %indvars.iv75, %indvars.iv106
  br i1 %exitcond79.not, label %for.cond.cleanup79, label %for.body80

for.cond.cleanup79:                               ; preds = %for.cond77
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  br label %for.cond52, !llvm.loop !19

for.body80:                                       ; preds = %for.cond77
  %arrayidx84 = getelementptr inbounds nuw [111 x [111 x i32]], ptr @A, i64 0, i64 %indvars.iv75, i64 %indvars.iv80
  %10 = load i32, ptr %arrayidx84, align 4, !tbaa !5
  %sub85 = sub nsw i32 %10, %min56.0
  store i32 %sub85, ptr %arrayidx84, align 4, !tbaa !5
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  br label %for.cond77, !llvm.loop !20

for.cond93:                                       ; preds = %for.cond98, %for.cond.cleanup54
  %indvars.iv90 = phi i64 [ 1, %for.cond.cleanup54 ], [ %indvars.iv.next91, %for.cond98 ]
  %exitcond94.not = icmp eq i64 %indvars.iv90, %indvars.iv106
  br i1 %exitcond94.not, label %for.cond118, label %for.cond98.preheader

for.cond98.preheader:                             ; preds = %for.cond93
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br label %for.cond98

for.cond98:                                       ; preds = %for.cond98.preheader, %for.body101
  %indvars.iv85 = phi i64 [ 0, %for.cond98.preheader ], [ %indvars.iv.next86, %for.body101 ]
  %exitcond89.not = icmp eq i64 %indvars.iv85, %indvars.iv106
  br i1 %exitcond89.not, label %for.cond93, label %for.body101, !llvm.loop !21

for.body101:                                      ; preds = %for.cond98
  %arrayidx106 = getelementptr inbounds nuw [111 x [111 x i32]], ptr @A, i64 0, i64 %indvars.iv.next91, i64 %indvars.iv85
  %11 = load i32, ptr %arrayidx106, align 4, !tbaa !5
  %arrayidx110 = getelementptr inbounds nuw [111 x [111 x i32]], ptr @A, i64 0, i64 %indvars.iv90, i64 %indvars.iv85
  store i32 %11, ptr %arrayidx110, align 4, !tbaa !5
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  br label %for.cond98, !llvm.loop !22

for.cond118:                                      ; preds = %for.cond123, %for.cond93
  %indvars.iv100 = phi i64 [ 1, %for.cond93 ], [ %indvars.iv.next101, %for.cond123 ]
  %exitcond104.not = icmp eq i64 %indvars.iv100, %indvars.iv106
  br i1 %exitcond104.not, label %for.cond.cleanup120, label %for.cond123.preheader

for.cond123.preheader:                            ; preds = %for.cond118
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  br label %for.cond123

for.cond.cleanup120:                              ; preds = %for.cond118
  %add = add nsw i32 %8, %S.0
  %indvars.iv.next107 = add nsw i64 %indvars.iv106, -1
  br label %for.cond10, !llvm.loop !23

for.cond123:                                      ; preds = %for.cond123.preheader, %for.body126
  %indvars.iv95 = phi i64 [ 0, %for.cond123.preheader ], [ %indvars.iv.next96, %for.body126 ]
  %exitcond99.not = icmp eq i64 %indvars.iv95, %indvars.iv106
  br i1 %exitcond99.not, label %for.cond118, label %for.body126, !llvm.loop !24

for.body126:                                      ; preds = %for.cond123
  %arrayidx131 = getelementptr inbounds nuw [111 x [111 x i32]], ptr @A, i64 0, i64 %indvars.iv95, i64 %indvars.iv.next101
  %12 = load i32, ptr %arrayidx131, align 4, !tbaa !5
  %arrayidx135 = getelementptr inbounds nuw [111 x [111 x i32]], ptr @A, i64 0, i64 %indvars.iv95, i64 %indvars.iv100
  store i32 %12, ptr %arrayidx135, align 4, !tbaa !5
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  br label %for.cond123, !llvm.loop !25
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  ret i32 0

for.body:                                         ; preds = %for.cond
  tail call void @_Z3sumv()
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !26
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !8, i64 0}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
