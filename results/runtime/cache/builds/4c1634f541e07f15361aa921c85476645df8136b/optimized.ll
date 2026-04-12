; ModuleID = '<stdin>'
source_filename = "/tmp/tmpimoqv4aq.cpp"
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
  %s = alloca [100 x [100 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %s) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %add.ptr124 = getelementptr inbounds nuw i8, ptr %s, i64 404
  br label %for.cond

for.cond:                                         ; preds = %for.inc187, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc188, %for.inc187 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.cond1, label %for.end189

for.cond1:                                        ; preds = %for.cond, %for.inc11
  %1 = phi i32 [ %4, %for.inc11 ], [ %0, %for.cond ]
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.inc11 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv71, %2
  br i1 %cmp2, label %for.cond4.preheader, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.cond1
  %smax128 = call i32 @llvm.smax.i32(i32 %1, i32 noundef 1)
  %3 = add nsw i32 %smax128, -1
  %wide.trip.count129 = zext nneg i32 %3 to i64
  br label %for.cond14

for.cond4.preheader:                              ; preds = %for.cond1
  %add.ptr = getelementptr inbounds nuw [100 x i32], ptr %s, i64 %indvars.iv71
  br label %for.cond4

for.cond4:                                        ; preds = %for.cond4.preheader, %for.inc
  %4 = phi i32 [ %1, %for.cond4.preheader ], [ %.pre, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.inc ]
  %5 = sext i32 %4 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %5
  br i1 %cmp5, label %for.inc, label %for.inc11

for.inc:                                          ; preds = %for.cond4
  %add.ptr9 = getelementptr inbounds nuw i32, ptr %add.ptr, i64 %indvars.iv
  %call10 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %add.ptr9)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc11:                                        ; preds = %for.cond4
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  br label %for.cond1, !llvm.loop !12

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc182
  %indvars.iv135.in = phi i32 [ %1, %for.cond14.preheader ], [ %indvars.iv135, %for.inc182 ]
  %indvars.iv124 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next125, %for.inc182 ]
  %count1.0 = phi i32 [ 0, %for.cond14.preheader ], [ %add, %for.inc182 ]
  %indvars.iv135 = add i32 %indvars.iv135.in, -1
  %6 = call i32 @llvm.smax.i32(i32 %indvars.iv135, i32 noundef 1)
  %smax137 = zext nneg i32 %6 to i64
  %exitcond130.not = icmp eq i64 %indvars.iv124, %wide.trip.count129
  br i1 %exitcond130.not, label %for.inc187, label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %for.cond14
  %smax121 = call i32 @llvm.smax.i32(i32 %indvars.iv135.in, i32 noundef 0)
  %wide.trip.count88 = zext nneg i32 %smax121 to i64
  %wide.trip.count = zext i32 %indvars.iv135.in to i64
  br label %for.cond17

for.cond17:                                       ; preds = %for.cond17.preheader, %for.inc65
  %indvars.iv85 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next86, %for.inc65 ]
  %exitcond89.not = icmp eq i64 %indvars.iv85, %wide.trip.count88
  br i1 %exitcond89.not, label %for.cond68, label %for.body19

for.body19:                                       ; preds = %for.cond17
  %add.ptr22 = getelementptr inbounds nuw [100 x i32], ptr %s, i64 %indvars.iv85
  %7 = load i32, ptr %add.ptr22, align 4, !tbaa !5
  br label %for.cond25

for.cond25:                                       ; preds = %for.body28, %for.body19
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %for.body28 ], [ 0, %for.body19 ]
  %min.0 = phi i32 [ %spec.select, %for.body28 ], [ %7, %for.body19 ]
  %exitcond.not = icmp eq i64 %indvars.iv74, %wide.trip.count
  br i1 %exitcond.not, label %for.cond45.preheader, label %for.body28

for.cond45.preheader:                             ; preds = %for.cond25
  br label %for.cond45

for.body28:                                       ; preds = %for.cond25
  %add.ptr34 = getelementptr inbounds nuw i32, ptr %add.ptr22, i64 %indvars.iv74
  %8 = load i32, ptr %add.ptr34, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %8, i32 %min.0)
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  br label %for.cond25, !llvm.loop !13

for.cond45:                                       ; preds = %for.cond45.preheader, %for.inc62
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %for.inc62 ], [ 0, %for.cond45.preheader ]
  %exitcond84.not = icmp eq i64 %indvars.iv80, %wide.trip.count
  br i1 %exitcond84.not, label %for.inc65, label %for.inc62

for.inc62:                                        ; preds = %for.cond45
  %add.ptr54 = getelementptr inbounds nuw i32, ptr %add.ptr22, i64 %indvars.iv80
  %9 = load i32, ptr %add.ptr54, align 4, !tbaa !5
  %sub55 = sub nsw i32 %9, %min.0
  store i32 %sub55, ptr %add.ptr54, align 4, !tbaa !5
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  br label %for.cond45, !llvm.loop !14

for.inc65:                                        ; preds = %for.cond45
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  br label %for.cond17, !llvm.loop !15

for.cond68:                                       ; preds = %for.cond17, %for.inc118
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %for.inc118 ], [ 0, %for.cond17 ]
  %exitcond105.not = icmp eq i64 %indvars.iv100, %wide.trip.count88
  br i1 %exitcond105.not, label %for.end120, label %for.body71

for.body71:                                       ; preds = %for.cond68
  %add.ptr75 = getelementptr inbounds nuw i32, ptr %s, i64 %indvars.iv100
  %10 = load i32, ptr %add.ptr75, align 4, !tbaa !5
  br label %for.cond76

for.cond76:                                       ; preds = %for.body79, %for.body71
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %for.body79 ], [ 0, %for.body71 ]
  %min.2 = phi i32 [ %spec.select67, %for.body79 ], [ %10, %for.body71 ]
  %exitcond94.not = icmp eq i64 %indvars.iv90, %wide.trip.count
  br i1 %exitcond94.not, label %for.cond98.preheader, label %for.body79

for.cond98.preheader:                             ; preds = %for.cond76
  br label %for.cond98

for.body79:                                       ; preds = %for.cond76
  %gep = getelementptr inbounds nuw [100 x i32], ptr %add.ptr75, i64 %indvars.iv90
  %11 = load i32, ptr %gep, align 4, !tbaa !5
  %spec.select67 = call i32 @llvm.smin.i32(i32 %11, i32 %min.2)
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br label %for.cond76, !llvm.loop !16

for.cond98:                                       ; preds = %for.cond98.preheader, %for.inc115
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %for.inc115 ], [ 0, %for.cond98.preheader ]
  %exitcond99.not = icmp eq i64 %indvars.iv95, %wide.trip.count
  br i1 %exitcond99.not, label %for.inc118, label %for.inc115

for.inc115:                                       ; preds = %for.cond98
  %gep69 = getelementptr inbounds nuw [100 x i32], ptr %add.ptr75, i64 %indvars.iv95
  %12 = load i32, ptr %gep69, align 4, !tbaa !5
  %sub108 = sub nsw i32 %12, %min.2
  store i32 %sub108, ptr %gep69, align 4, !tbaa !5
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  br label %for.cond98, !llvm.loop !17

for.inc118:                                       ; preds = %for.cond98
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  br label %for.cond68, !llvm.loop !18

for.end120:                                       ; preds = %for.cond68
  %13 = load i32, ptr %add.ptr124, align 4, !tbaa !5
  br label %for.cond125

for.cond125:                                      ; preds = %for.inc150, %for.end120
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %for.inc150 ], [ 0, %for.end120 ]
  %exitcond114.not = icmp eq i64 %indvars.iv109, %wide.trip.count88
  br i1 %exitcond114.not, label %for.cond153, label %for.cond129.preheader

for.cond129.preheader:                            ; preds = %for.cond125
  %add.ptr136 = getelementptr inbounds nuw [100 x i32], ptr %s, i64 %indvars.iv109
  br label %for.cond129

for.cond129:                                      ; preds = %for.cond129.preheader, %for.inc147
  %indvars.iv106 = phi i64 [ 1, %for.cond129.preheader ], [ %indvars.iv.next107, %for.inc147 ]
  %exitcond.not139 = icmp eq i64 %indvars.iv106, %smax137
  br i1 %exitcond.not139, label %for.inc150, label %for.inc147

for.inc147:                                       ; preds = %for.cond129
  %add.ptr139 = getelementptr inbounds nuw i32, ptr %add.ptr136, i64 %indvars.iv106
  %add.ptr140 = getelementptr inbounds nuw i8, ptr %add.ptr139, i64 4
  %14 = load i32, ptr %add.ptr140, align 4, !tbaa !5
  store i32 %14, ptr %add.ptr139, align 4, !tbaa !5
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  br label %for.cond129, !llvm.loop !19

for.inc150:                                       ; preds = %for.cond129
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  br label %for.cond125, !llvm.loop !20

for.cond153:                                      ; preds = %for.cond125, %for.inc178
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %for.inc178 ], [ 0, %for.cond125 ]
  %exitcond123.not = icmp eq i64 %indvars.iv118, %wide.trip.count88
  br i1 %exitcond123.not, label %for.inc182, label %for.cond157

for.cond157:                                      ; preds = %for.cond153, %for.inc175
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %for.inc175 ], [ 1, %for.cond153 ]
  %exitcond138.not = icmp eq i64 %indvars.iv115, %smax137
  br i1 %exitcond138.not, label %for.inc178, label %for.inc175

for.inc175:                                       ; preds = %for.cond157
  %add.ptr164 = getelementptr inbounds nuw [100 x i32], ptr %s, i64 %indvars.iv115
  %add.ptr165 = getelementptr inbounds nuw i8, ptr %add.ptr164, i64 400
  %add.ptr168 = getelementptr inbounds nuw i32, ptr %add.ptr165, i64 %indvars.iv118
  %15 = load i32, ptr %add.ptr168, align 4, !tbaa !5
  %add.ptr174 = getelementptr inbounds nuw i32, ptr %add.ptr164, i64 %indvars.iv118
  store i32 %15, ptr %add.ptr174, align 4, !tbaa !5
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1
  br label %for.cond157, !llvm.loop !21

for.inc178:                                       ; preds = %for.cond157
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1
  br label %for.cond153, !llvm.loop !22

for.inc182:                                       ; preds = %for.cond153
  %add = add nsw i32 %13, %count1.0
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1
  br label %for.cond14, !llvm.loop !23

for.inc187:                                       ; preds = %for.cond14
  %call185 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %count1.0)
  %call186 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call185, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc188 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !24

for.end189:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %s) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

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
!24 = distinct !{!24, !10, !11}
