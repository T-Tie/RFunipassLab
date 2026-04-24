; ModuleID = '<stdin>'
source_filename = "/tmp/tmpgh8nlrbt.cpp"
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
  %a = alloca [100 x [100 x i32]], align 16
  %sum = alloca [101 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %a) #7
  call void @llvm.lifetime.start.p0(i64 noundef 404, ptr noundef nonnull %sum) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %arrayidx107 = getelementptr inbounds nuw i8, ptr %a, i64 404
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.end160, %entry
  %0 = phi i32 [ %3, %for.end160 ], [ %.pre, %entry ]
  %1 = phi i32 [ %4, %for.end160 ], [ %.pre, %entry ]
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %for.end160 ], [ 1, %entry ]
  %2 = sext i32 %1 to i64
  %cmp.not = icmp sgt i64 %indvars.iv127, %2
  br i1 %cmp.not, label %for.cond164, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.end
  %3 = phi i32 [ %6, %for.end ], [ %0, %for.cond ]
  %4 = phi i32 [ %6, %for.end ], [ %1, %for.cond ]
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %for.end ], [ 0, %for.cond ]
  %5 = sext i32 %4 to i64
  %cmp2.not.not = icmp slt i64 %indvars.iv73, %5
  br i1 %cmp2.not.not, label %for.cond4, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.cond1
  %arrayidx105 = getelementptr inbounds nuw [101 x i32], ptr %sum, i64 0, i64 %indvars.iv127
  %smax124 = call i32 @llvm.smax.i32(i32 %4, i32 1)
  %wide.trip.count125 = zext nneg i32 %smax124 to i64
  br label %for.cond14

for.cond4:                                        ; preds = %for.cond1, %for.body7
  %6 = phi i32 [ %.pre133, %for.body7 ], [ %3, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body7 ], [ 0, %for.cond1 ]
  %7 = sext i32 %6 to i64
  %cmp6.not.not = icmp slt i64 %indvars.iv, %7
  br i1 %cmp6.not.not, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond4
  %arrayidx9 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv73, i64 %indvars.iv
  %call10 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx9)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre133 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  br label %for.cond1, !llvm.loop !12

for.cond14:                                       ; preds = %for.cond14.preheader, %for.end157
  %indvars.iv119 = phi i64 [ 1, %for.cond14.preheader ], [ %indvars.iv.next120, %for.end157 ]
  %indvars.iv110.in = phi i32 [ %4, %for.cond14.preheader ], [ %indvars.iv110, %for.end157 ]
  %indvars.iv80 = phi i32 [ %4, %for.cond14.preheader ], [ %indvars.iv.next81, %for.end157 ]
  %indvars.iv110 = add i32 %indvars.iv110.in, -1
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv110, i32 1)
  %exitcond126.not = icmp eq i64 %indvars.iv119, %wide.trip.count125
  br i1 %exitcond126.not, label %for.end160, label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %for.cond14
  %8 = sub nsw i64 %5, %indvars.iv119
  %wide.trip.count = zext i32 %indvars.iv80 to i64
  br label %for.cond18

for.cond18:                                       ; preds = %for.cond18.preheader, %for.end56
  %indvars.iv87 = phi i64 [ 0, %for.cond18.preheader ], [ %indvars.iv.next88, %for.end56 ]
  %cmp20.not = icmp sgt i64 %indvars.iv87, %8
  br i1 %cmp20.not, label %for.cond60.preheader, label %for.body21

for.cond60.preheader:                             ; preds = %for.cond18
  %wide.trip.count93 = zext i32 %indvars.iv80 to i64
  br label %for.cond60

for.body21:                                       ; preds = %for.cond18
  %arrayidx23 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv87
  %9 = load i32, ptr %arrayidx23, align 16, !tbaa !5, !invariant.load !13
  br label %for.cond25

for.cond25:                                       ; preds = %for.body28, %for.body21
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %for.body28 ], [ 0, %for.body21 ]
  %min.0 = phi i32 [ %spec.select, %for.body28 ], [ %9, %for.body21 ]
  %exitcond = icmp eq i64 %indvars.iv76, %wide.trip.count
  br i1 %exitcond, label %for.cond41.preheader, label %for.body28

for.cond41.preheader:                             ; preds = %for.cond25
  br label %for.cond41

for.body28:                                       ; preds = %for.cond25
  %arrayidx32 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv87, i64 %indvars.iv76
  %10 = load i32, ptr %arrayidx32, align 4, !tbaa !5, !invariant.load !13
  %spec.select = call i32 @llvm.smin.i32(i32 %min.0, i32 %10)
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  br label %for.cond25, !llvm.loop !14

for.cond41:                                       ; preds = %for.cond41.preheader, %for.body44
  %indvars.iv82 = phi i64 [ 0, %for.cond41.preheader ], [ %indvars.iv.next83, %for.body44 ]
  %exitcond86 = icmp eq i64 %indvars.iv82, %wide.trip.count
  br i1 %exitcond86, label %for.end56, label %for.body44

for.body44:                                       ; preds = %for.cond41
  %arrayidx48 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv87, i64 %indvars.iv82
  %11 = load i32, ptr %arrayidx48, align 4, !tbaa !5, !invariant.load !13
  %sub49 = sub nsw i32 %11, %min.0
  store i32 %sub49, ptr %arrayidx48, align 4, !tbaa !5
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  br label %for.cond41, !llvm.loop !15

for.end56:                                        ; preds = %for.cond41
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  br label %for.cond18, !llvm.loop !16

for.cond60:                                       ; preds = %for.cond60.preheader, %for.end100
  %indvars.iv100 = phi i64 [ 0, %for.cond60.preheader ], [ %indvars.iv.next101, %for.end100 ]
  %cmp62.not = icmp sgt i64 %indvars.iv100, %8
  br i1 %cmp62.not, label %for.end103, label %for.body63

for.body63:                                       ; preds = %for.cond60
  %arrayidx66 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv100
  %12 = load i32, ptr %arrayidx66, align 4, !tbaa !5, !invariant.load !13
  br label %for.cond67

for.cond67:                                       ; preds = %for.body70, %for.body63
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %for.body70 ], [ 0, %for.body63 ]
  %min.2 = phi i32 [ %spec.select71, %for.body70 ], [ %12, %for.body63 ]
  %exitcond94 = icmp eq i64 %indvars.iv90, %wide.trip.count93
  br i1 %exitcond94, label %for.cond85.preheader, label %for.body70

for.cond85.preheader:                             ; preds = %for.cond67
  br label %for.cond85

for.body70:                                       ; preds = %for.cond67
  %arrayidx74 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv90, i64 %indvars.iv100
  %13 = load i32, ptr %arrayidx74, align 4, !tbaa !5, !invariant.load !13
  %spec.select71 = call i32 @llvm.smin.i32(i32 %min.2, i32 %13)
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br label %for.cond67, !llvm.loop !17

for.cond85:                                       ; preds = %for.cond85.preheader, %for.body88
  %indvars.iv95 = phi i64 [ 0, %for.cond85.preheader ], [ %indvars.iv.next96, %for.body88 ]
  %exitcond99 = icmp eq i64 %indvars.iv95, %wide.trip.count93
  br i1 %exitcond99, label %for.end100, label %for.body88

for.body88:                                       ; preds = %for.cond85
  %arrayidx92 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv95, i64 %indvars.iv100
  %14 = load i32, ptr %arrayidx92, align 4, !tbaa !5, !invariant.load !13
  %sub93 = sub nsw i32 %14, %min.2
  store i32 %sub93, ptr %arrayidx92, align 4, !tbaa !5
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  br label %for.cond85, !llvm.loop !18

for.end100:                                       ; preds = %for.cond85
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  br label %for.cond60, !llvm.loop !19

for.end103:                                       ; preds = %for.cond60
  %15 = load i32, ptr %arrayidx105, align 4, !tbaa !5, !invariant.load !13
  %16 = load i32, ptr %arrayidx107, align 4, !tbaa !5
  %add = add nsw i32 %16, %15
  store i32 %add, ptr %arrayidx105, align 4, !tbaa !5
  br label %for.cond110

for.cond110:                                      ; preds = %for.body114, %for.end103
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %for.body114 ], [ 1, %for.end103 ]
  %cmp113.not.not = icmp slt i64 %indvars.iv103, %8
  br i1 %cmp113.not.not, label %for.body114, label %for.cond132.preheader

for.cond132.preheader:                            ; preds = %for.cond110
  %wide.trip.count117 = zext nneg i32 %smax to i64
  %wide.trip.count112 = zext i32 %indvars.iv110 to i64
  br label %for.cond132

for.body114:                                      ; preds = %for.cond110
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  %arrayidx118 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv.next104
  %17 = load i32, ptr %arrayidx118, align 4, !tbaa !5, !invariant.load !13
  %arrayidx121 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv103
  store i32 %17, ptr %arrayidx121, align 4, !tbaa !5
  %arrayidx124 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next104
  %18 = load i32, ptr %arrayidx124, align 16, !tbaa !5, !invariant.load !13
  %arrayidx127 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv103
  store i32 %18, ptr %arrayidx127, align 16, !tbaa !5
  br label %for.cond110, !llvm.loop !20

for.cond132:                                      ; preds = %for.cond137, %for.cond132.preheader
  %indvars.iv114 = phi i64 [ 1, %for.cond132.preheader ], [ %indvars.iv.next115, %for.cond137 ]
  %exitcond118.not = icmp eq i64 %indvars.iv114, %wide.trip.count117
  br i1 %exitcond118.not, label %for.end157, label %for.cond137.preheader

for.cond137.preheader:                            ; preds = %for.cond132
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  br label %for.cond137

for.cond137:                                      ; preds = %for.cond137.preheader, %for.body141
  %indvars.iv106 = phi i64 [ 1, %for.cond137.preheader ], [ %indvars.iv.next107, %for.body141 ]
  %exitcond113.not = icmp eq i64 %indvars.iv106, %wide.trip.count112
  br i1 %exitcond113.not, label %for.cond132, label %for.body141, !llvm.loop !21

for.body141:                                      ; preds = %for.cond137
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  %arrayidx147 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next115, i64 %indvars.iv.next107
  %19 = load i32, ptr %arrayidx147, align 4, !tbaa !5, !invariant.load !13
  %arrayidx151 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv114, i64 %indvars.iv106
  store i32 %19, ptr %arrayidx151, align 4, !tbaa !5
  br label %for.cond137, !llvm.loop !22

for.end157:                                       ; preds = %for.cond132
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1
  %indvars.iv.next81 = add i32 %indvars.iv80, -1
  br label %for.cond14, !llvm.loop !23

for.end160:                                       ; preds = %for.cond14
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1
  br label %for.cond, !llvm.loop !24

for.cond164:                                      ; preds = %for.cond, %for.body166
  %20 = phi i32 [ %.pre134, %for.body166 ], [ %0, %for.cond ]
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %for.body166 ], [ 1, %for.cond ]
  %21 = sext i32 %20 to i64
  %cmp165.not = icmp sgt i64 %indvars.iv130, %21
  br i1 %cmp165.not, label %for.end173, label %for.body166

for.body166:                                      ; preds = %for.cond164
  %arrayidx168 = getelementptr inbounds nuw [101 x i32], ptr %sum, i64 0, i64 %indvars.iv130
  %22 = load i32, ptr %arrayidx168, align 4, !tbaa !5, !invariant.load !13
  %call169 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %22)
  %call170 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call169, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1
  %.pre134 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond164, !llvm.loop !25

for.end173:                                       ; preds = %for.cond164
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  call void @llvm.lifetime.end.p0(i64 noundef 404, ptr noundef nonnull %sum) #8
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }

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
!13 = !{}
!14 = distinct !{!14, !10, !11}
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
