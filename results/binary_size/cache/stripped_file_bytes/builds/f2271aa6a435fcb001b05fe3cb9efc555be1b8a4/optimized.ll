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
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 404, ptr nonnull %sum) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(404) %sum, i8 0, i64 404, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %arrayidx107 = getelementptr inbounds nuw i8, ptr %a, i64 404
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc161, %entry
  %0 = phi i32 [ %3, %for.inc161 ], [ %.pre, %entry ]
  %1 = phi i32 [ %4, %for.inc161 ], [ %.pre, %entry ]
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %for.inc161 ], [ 1, %entry ]
  %2 = sext i32 %1 to i64
  %cmp.not = icmp sgt i64 %indvars.iv131, %2
  br i1 %cmp.not, label %for.cond164, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc11
  %3 = phi i32 [ %7, %for.inc11 ], [ %0, %for.cond ]
  %4 = phi i32 [ %7, %for.inc11 ], [ %1, %for.cond ]
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.inc11 ], [ 0, %for.cond ]
  %5 = sext i32 %4 to i64
  %cmp2.not.not = icmp slt i64 %indvars.iv71, %5
  br i1 %cmp2.not.not, label %for.cond4, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.cond1
  %arrayidx105 = getelementptr inbounds nuw [101 x i32], ptr %sum, i64 0, i64 %indvars.iv131
  %6 = add i32 %4, -2
  %smax128 = call i32 @llvm.smax.i32(i32 %4, i32 1)
  %wide.trip.count129 = zext nneg i32 %smax128 to i64
  br label %for.cond14

for.cond4:                                        ; preds = %for.cond1, %for.body7
  %7 = phi i32 [ %.pre137, %for.body7 ], [ %3, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body7 ], [ 0, %for.cond1 ]
  %8 = sext i32 %7 to i64
  %cmp6.not.not = icmp slt i64 %indvars.iv, %8
  br i1 %cmp6.not.not, label %for.body7, label %for.inc11

for.body7:                                        ; preds = %for.cond4
  %arrayidx9 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv71, i64 %indvars.iv
  %call10 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx9)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre137 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc11:                                        ; preds = %for.cond4
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  br label %for.cond1, !llvm.loop !12

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc158
  %indvars.iv123 = phi i64 [ 1, %for.cond14.preheader ], [ %indvars.iv.next124, %for.inc158 ]
  %indvars.iv113.in = phi i32 [ %4, %for.cond14.preheader ], [ %indvars.iv113, %for.inc158 ]
  %indvars.iv105 = phi i32 [ %6, %for.cond14.preheader ], [ %indvars.iv.next106, %for.inc158 ]
  %indvars.iv78 = phi i32 [ %4, %for.cond14.preheader ], [ %indvars.iv.next79, %for.inc158 ]
  %indvars.iv113 = add i32 %indvars.iv113.in, -1
  %smax120 = call i32 @llvm.smax.i32(i32 %indvars.iv105, i32 0)
  %9 = add nuw i32 %smax120, 1
  %exitcond130.not = icmp eq i64 %indvars.iv123, %wide.trip.count129
  br i1 %exitcond130.not, label %for.inc161, label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %for.cond14
  %10 = sub nsw i64 %5, %indvars.iv123
  %wide.trip.count = zext i32 %indvars.iv78 to i64
  br label %for.cond18

for.cond18:                                       ; preds = %for.cond18.preheader, %for.inc57
  %indvars.iv85 = phi i64 [ 0, %for.cond18.preheader ], [ %indvars.iv.next86, %for.inc57 ]
  %cmp20.not = icmp sgt i64 %indvars.iv85, %10
  br i1 %cmp20.not, label %for.cond60.preheader, label %for.body21

for.cond60.preheader:                             ; preds = %for.cond18
  %wide.trip.count91 = zext i32 %indvars.iv78 to i64
  br label %for.cond60

for.body21:                                       ; preds = %for.cond18
  %arrayidx23 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv85
  %11 = load i32, ptr %arrayidx23, align 16, !tbaa !5
  br label %for.cond25

for.cond25:                                       ; preds = %for.body28, %for.body21
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %for.body28 ], [ 0, %for.body21 ]
  %min.0 = phi i32 [ %spec.select, %for.body28 ], [ %11, %for.body21 ]
  %exitcond = icmp eq i64 %indvars.iv74, %wide.trip.count
  br i1 %exitcond, label %for.cond41, label %for.body28

for.body28:                                       ; preds = %for.cond25
  %arrayidx32 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv85, i64 %indvars.iv74
  %12 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %min.0, i32 %12)
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  br label %for.cond25, !llvm.loop !13

for.cond41:                                       ; preds = %for.cond25, %for.body44
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %for.body44 ], [ 0, %for.cond25 ]
  %exitcond84 = icmp eq i64 %indvars.iv80, %wide.trip.count
  br i1 %exitcond84, label %for.inc57, label %for.body44

for.body44:                                       ; preds = %for.cond41
  %arrayidx48 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv85, i64 %indvars.iv80
  %13 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %sub49 = sub nsw i32 %13, %min.0
  store i32 %sub49, ptr %arrayidx48, align 4, !tbaa !5
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  br label %for.cond41, !llvm.loop !14

for.inc57:                                        ; preds = %for.cond41
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  br label %for.cond18, !llvm.loop !15

for.cond60:                                       ; preds = %for.cond60.preheader, %for.inc101
  %indvars.iv98 = phi i64 [ 0, %for.cond60.preheader ], [ %indvars.iv.next99, %for.inc101 ]
  %cmp62.not = icmp sgt i64 %indvars.iv98, %10
  br i1 %cmp62.not, label %for.end103, label %for.body63

for.body63:                                       ; preds = %for.cond60
  %arrayidx66 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv98
  %14 = load i32, ptr %arrayidx66, align 4, !tbaa !5
  br label %for.cond67

for.cond67:                                       ; preds = %for.body70, %for.body63
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %for.body70 ], [ 0, %for.body63 ]
  %min.2 = phi i32 [ %spec.select68, %for.body70 ], [ %14, %for.body63 ]
  %exitcond92 = icmp eq i64 %indvars.iv88, %wide.trip.count91
  br i1 %exitcond92, label %for.cond85, label %for.body70

for.body70:                                       ; preds = %for.cond67
  %arrayidx74 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv88, i64 %indvars.iv98
  %15 = load i32, ptr %arrayidx74, align 4, !tbaa !5
  %spec.select68 = call i32 @llvm.smin.i32(i32 %min.2, i32 %15)
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  br label %for.cond67, !llvm.loop !16

for.cond85:                                       ; preds = %for.cond67, %for.body88
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %for.body88 ], [ 0, %for.cond67 ]
  %exitcond97 = icmp eq i64 %indvars.iv93, %wide.trip.count91
  br i1 %exitcond97, label %for.inc101, label %for.body88

for.body88:                                       ; preds = %for.cond85
  %arrayidx92 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv93, i64 %indvars.iv98
  %16 = load i32, ptr %arrayidx92, align 4, !tbaa !5
  %sub93 = sub nsw i32 %16, %min.2
  store i32 %sub93, ptr %arrayidx92, align 4, !tbaa !5
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  br label %for.cond85, !llvm.loop !17

for.inc101:                                       ; preds = %for.cond85
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  br label %for.cond60, !llvm.loop !18

for.end103:                                       ; preds = %for.cond60
  %17 = load i32, ptr %arrayidx105, align 4, !tbaa !5
  %18 = load i32, ptr %arrayidx107, align 4, !tbaa !5
  %add = add nsw i32 %18, %17
  store i32 %add, ptr %arrayidx105, align 4, !tbaa !5
  %wide.trip.count107 = zext i32 %9 to i64
  br label %for.cond110

for.cond110:                                      ; preds = %for.body114, %for.end103
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %for.body114 ], [ 1, %for.end103 ]
  %exitcond108 = icmp eq i64 %indvars.iv101, %wide.trip.count107
  br i1 %exitcond108, label %for.cond132.preheader, label %for.body114

for.cond132.preheader:                            ; preds = %for.cond110
  %wide.trip.count115 = zext i32 %indvars.iv113 to i64
  br label %for.cond132

for.body114:                                      ; preds = %for.cond110
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  %arrayidx118 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv.next102
  %19 = load i32, ptr %arrayidx118, align 4, !tbaa !5
  %arrayidx121 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv101
  store i32 %19, ptr %arrayidx121, align 4, !tbaa !5
  %arrayidx124 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next102
  %20 = load i32, ptr %arrayidx124, align 16, !tbaa !5
  %arrayidx127 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv101
  store i32 %20, ptr %arrayidx127, align 16, !tbaa !5
  br label %for.cond110, !llvm.loop !19

for.cond132:                                      ; preds = %for.cond137, %for.cond132.preheader
  %indvars.iv117 = phi i64 [ 1, %for.cond132.preheader ], [ %indvars.iv.next118, %for.cond137 ]
  %exitcond122 = icmp eq i64 %indvars.iv117, %wide.trip.count107
  br i1 %exitcond122, label %for.inc158, label %for.cond137.preheader

for.cond137.preheader:                            ; preds = %for.cond132
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1
  br label %for.cond137

for.cond137:                                      ; preds = %for.cond137.preheader, %for.body141
  %indvars.iv109 = phi i64 [ 1, %for.cond137.preheader ], [ %indvars.iv.next110, %for.body141 ]
  %exitcond116 = icmp eq i64 %indvars.iv109, %wide.trip.count115
  br i1 %exitcond116, label %for.cond132, label %for.body141, !llvm.loop !20

for.body141:                                      ; preds = %for.cond137
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  %arrayidx147 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next118, i64 %indvars.iv.next110
  %21 = load i32, ptr %arrayidx147, align 4, !tbaa !5
  %arrayidx151 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv117, i64 %indvars.iv109
  store i32 %21, ptr %arrayidx151, align 4, !tbaa !5
  br label %for.cond137, !llvm.loop !21

for.inc158:                                       ; preds = %for.cond132
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1
  %indvars.iv.next79 = add i32 %indvars.iv78, -1
  %indvars.iv.next106 = add i32 %indvars.iv105, -1
  br label %for.cond14, !llvm.loop !22

for.inc161:                                       ; preds = %for.cond14
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1
  br label %for.cond, !llvm.loop !23

for.cond164:                                      ; preds = %for.cond, %for.body166
  %22 = phi i32 [ %.pre138, %for.body166 ], [ %0, %for.cond ]
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %for.body166 ], [ 1, %for.cond ]
  %23 = sext i32 %22 to i64
  %cmp165.not = icmp sgt i64 %indvars.iv134, %23
  br i1 %cmp165.not, label %for.end173, label %for.body166

for.body166:                                      ; preds = %for.cond164
  %arrayidx168 = getelementptr inbounds nuw [101 x i32], ptr %sum, i64 0, i64 %indvars.iv134
  %24 = load i32, ptr %arrayidx168, align 4, !tbaa !5
  %call169 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %24)
  %vtable.i = load ptr, ptr %call169, align 8, !tbaa !24
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call169, i64 %vbase.offset.i
  %call.i69 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call169, i8 noundef signext %call.i69)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1
  %.pre138 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond164, !llvm.loop !26

for.end173:                                       ; preds = %for.cond164
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.end.p0(i64 404, ptr nonnull %sum) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #6
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = !{!25, !25, i64 0}
!25 = !{!"vtable pointer", !8, i64 0}
!26 = distinct !{!26, !10, !11}
