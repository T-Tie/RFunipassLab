; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_e3aejg3.cpp"
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
  %n = alloca i32, align 4
  %board = alloca [105 x [105 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end140, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc144, %for.end140 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %k.0, %0
  br i1 %cmp, label %for.body, label %for.end145

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 44100, ptr nonnull %board) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(44100) %board, i8 0, i64 44100, i1 false)
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %1 = phi i32 [ %3, %for.inc10 ], [ %0, %for.body ]
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %for.inc10 ], [ 0, %for.body ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv67, %2
  br i1 %cmp2, label %for.cond4, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond1
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count116 = zext nneg i32 %smax to i64
  %wide.trip.count86 = zext i32 %1 to i64
  br label %for.cond13

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %3 = phi i32 [ %.pre, %for.body6 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp5, label %for.body6, label %for.inc10

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %indvars.iv67, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  br label %for.cond1, !llvm.loop !12

for.cond13.loopexit:                              ; preds = %for.cond123
  %add95 = add nsw i32 %11, %sum.0
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  br label %for.cond13, !llvm.loop !13

for.cond13:                                       ; preds = %for.cond13.loopexit, %for.cond13.preheader
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %for.cond13.loopexit ], [ 2, %for.cond13.preheader ]
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.cond13.loopexit ], [ 0, %for.cond13.preheader ]
  %sum.0 = phi i32 [ %add95, %for.cond13.loopexit ], [ 0, %for.cond13.preheader ]
  %exitcond117.not = icmp eq i64 %indvars.iv70, %wide.trip.count116
  br i1 %exitcond117.not, label %for.end140, label %for.cond16

for.cond16:                                       ; preds = %for.cond13, %for.end47
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %for.end47 ], [ %indvars.iv70, %for.cond13 ]
  %exitcond87.not = icmp eq i64 %indvars.iv82, %wide.trip.count86
  br i1 %exitcond87.not, label %for.cond51, label %for.body18

for.body18:                                       ; preds = %for.cond16
  %arrayidx22 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %indvars.iv82, i64 %indvars.iv70
  %5 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  br label %for.cond23

for.cond23:                                       ; preds = %for.body25, %for.body18
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.body25 ], [ %indvars.iv70, %for.body18 ]
  %min.0 = phi i32 [ %spec.select, %for.body25 ], [ %5, %for.body18 ]
  %exitcond.not = icmp eq i64 %indvars.iv72, %wide.trip.count86
  br i1 %exitcond.not, label %for.cond38, label %for.body25

for.body25:                                       ; preds = %for.cond23
  %arrayidx29 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %indvars.iv82, i64 %indvars.iv72
  %6 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %6, i32 %min.0)
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  br label %for.cond23, !llvm.loop !14

for.cond38:                                       ; preds = %for.cond23, %for.body40
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %for.body40 ], [ %indvars.iv70, %for.cond23 ]
  %exitcond81.not = icmp eq i64 %indvars.iv76, %wide.trip.count86
  br i1 %exitcond81.not, label %for.end47, label %for.body40

for.body40:                                       ; preds = %for.cond38
  %arrayidx44 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %indvars.iv82, i64 %indvars.iv76
  %7 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %sub = sub nsw i32 %7, %min.0
  store i32 %sub, ptr %arrayidx44, align 4, !tbaa !5
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  br label %for.cond38, !llvm.loop !15

for.end47:                                        ; preds = %for.cond38
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  br label %for.cond16, !llvm.loop !16

for.cond51:                                       ; preds = %for.cond16, %for.end86
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %for.end86 ], [ %indvars.iv70, %for.cond16 ]
  %exitcond105.not = icmp eq i64 %indvars.iv100, %wide.trip.count86
  br i1 %exitcond105.not, label %for.end89, label %for.body53

for.body53:                                       ; preds = %for.cond51
  %arrayidx58 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %indvars.iv70, i64 %indvars.iv100
  %8 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  br label %for.cond59

for.cond59:                                       ; preds = %for.body61, %for.body53
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %for.body61 ], [ %indvars.iv70, %for.body53 ]
  %min54.0 = phi i32 [ %spec.select64, %for.body61 ], [ %8, %for.body53 ]
  %exitcond93.not = icmp eq i64 %indvars.iv88, %wide.trip.count86
  br i1 %exitcond93.not, label %for.cond76, label %for.body61

for.body61:                                       ; preds = %for.cond59
  %arrayidx65 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %indvars.iv88, i64 %indvars.iv100
  %9 = load i32, ptr %arrayidx65, align 4, !tbaa !5
  %spec.select64 = call i32 @llvm.smin.i32(i32 %9, i32 %min54.0)
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  br label %for.cond59, !llvm.loop !17

for.cond76:                                       ; preds = %for.cond59, %for.body78
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %for.body78 ], [ %indvars.iv70, %for.cond59 ]
  %exitcond99.not = icmp eq i64 %indvars.iv94, %wide.trip.count86
  br i1 %exitcond99.not, label %for.end86, label %for.body78

for.body78:                                       ; preds = %for.cond76
  %arrayidx82 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %indvars.iv94, i64 %indvars.iv100
  %10 = load i32, ptr %arrayidx82, align 4, !tbaa !5
  %sub83 = sub nsw i32 %10, %min54.0
  store i32 %sub83, ptr %arrayidx82, align 4, !tbaa !5
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  br label %for.cond76, !llvm.loop !18

for.end86:                                        ; preds = %for.cond76
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  br label %for.cond51, !llvm.loop !19

for.end89:                                        ; preds = %for.cond51
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  %arrayidx94 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %indvars.iv.next71, i64 %indvars.iv.next71
  %11 = load i32, ptr %arrayidx94, align 4, !tbaa !5
  %arrayidx99 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %indvars.iv70, i64 %indvars.iv70
  %12 = load i32, ptr %arrayidx99, align 4, !tbaa !5
  store i32 %12, ptr %arrayidx94, align 4, !tbaa !5
  br label %for.cond107

for.cond107:                                      ; preds = %for.body109, %for.end89
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %for.body109 ], [ %indvars.iv106, %for.end89 ]
  %13 = trunc nuw i64 %indvars.iv108 to i32
  %cmp108 = icmp sgt i32 %1, %13
  br i1 %cmp108, label %for.body109, label %for.cond123

for.body109:                                      ; preds = %for.cond107
  %arrayidx113 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %indvars.iv70, i64 %indvars.iv108
  %14 = load i32, ptr %arrayidx113, align 4, !tbaa !5
  %arrayidx118 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %indvars.iv.next71, i64 %indvars.iv108
  store i32 %14, ptr %arrayidx118, align 4, !tbaa !5
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1
  br label %for.cond107, !llvm.loop !20

for.cond123:                                      ; preds = %for.cond107, %for.body125
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %for.body125 ], [ %indvars.iv106, %for.cond107 ]
  %15 = trunc nuw i64 %indvars.iv111 to i32
  %cmp124 = icmp sgt i32 %1, %15
  br i1 %cmp124, label %for.body125, label %for.cond13.loopexit

for.body125:                                      ; preds = %for.cond123
  %arrayidx129 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %indvars.iv111, i64 %indvars.iv70
  %16 = load i32, ptr %arrayidx129, align 4, !tbaa !5
  %arrayidx134 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %indvars.iv111, i64 %indvars.iv.next71
  store i32 %16, ptr %arrayidx134, align 4, !tbaa !5
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1
  br label %for.cond123, !llvm.loop !21

for.end140:                                       ; preds = %for.cond13
  %call141 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %vtable.i = load ptr, ptr %call141, align 8, !tbaa !22
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call141, i64 %vbase.offset.i
  %call.i65 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call141, i8 noundef signext %call.i65)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  call void @llvm.lifetime.end.p0(i64 44100, ptr nonnull %board) #6
  %inc144 = add nuw nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !24

for.end145:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = !{!23, !23, i64 0}
!23 = !{!"vtable pointer", !8, i64 0}
!24 = distinct !{!24, !10, !11}
