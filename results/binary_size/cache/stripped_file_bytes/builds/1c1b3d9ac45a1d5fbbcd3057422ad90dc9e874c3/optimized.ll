; ModuleID = '<stdin>'
source_filename = "/tmp/tmpkzlcz578.cpp"
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
  %nq = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %nq) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %nq)
  %0 = load i32, ptr %nq, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  %3 = mul nuw i64 %1, %1
  %4 = mul nuw i64 %3, %1
  %vla1 = alloca i32, i64 %4, align 16
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count84 = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %for.inc16 ], [ 0, %entry ]
  %exitcond85.not = icmp eq i64 %indvars.iv81, %wide.trip.count84
  br i1 %exitcond85.not, label %for.cond19.preheader, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %5 = mul nsw i64 %indvars.iv81, %3
  %arrayidx = getelementptr inbounds i32, ptr %vla1, i64 %5
  br label %for.cond2

for.cond19.preheader:                             ; preds = %for.cond
  %sub149 = add i32 %0, -1
  %smax130 = call i32 @llvm.smax.i32(i32 %sub149, i32 noundef 0)
  %wide.trip.count131 = zext nneg i32 %smax130 to i64
  br label %for.cond19

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc13
  %indvars.iv76 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next77, %for.inc13 ]
  %exitcond80.not = icmp eq i64 %indvars.iv76, %1
  br i1 %exitcond80.not, label %for.inc16, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.cond2
  %6 = mul nuw nsw i64 %indvars.iv76, %1
  %arrayidx9 = getelementptr inbounds nuw i32, ptr %arrayidx, i64 %6
  br label %for.cond5

for.cond5:                                        ; preds = %for.cond5.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %1
  br i1 %exitcond.not, label %for.inc13, label %for.inc

for.inc:                                          ; preds = %for.cond5
  %arrayidx11 = getelementptr inbounds nuw i32, ptr %arrayidx9, i64 %indvars.iv
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx11)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond5, !llvm.loop !9

for.inc13:                                        ; preds = %for.cond5
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  br label %for.cond2, !llvm.loop !12

for.inc16:                                        ; preds = %for.cond2
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  br label %for.cond, !llvm.loop !13

for.cond19:                                       ; preds = %for.cond19.preheader, %for.inc173
  %indvars.iv141 = phi i64 [ 0, %for.cond19.preheader ], [ %indvars.iv.next142, %for.inc173 ]
  %exitcond145.not = icmp eq i64 %indvars.iv141, %wide.trip.count84
  br i1 %exitcond145.not, label %for.cond176, label %for.body21

for.body21:                                       ; preds = %for.cond19
  %arrayidx23 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv141
  store i32 0, ptr %arrayidx23, align 4, !tbaa !5
  %7 = mul nsw i64 %indvars.iv141, %3
  %arrayidx31 = getelementptr inbounds i32, ptr %vla1, i64 %7
  %arrayidx116 = getelementptr inbounds nuw i32, ptr %arrayidx31, i64 %1
  %arrayidx117 = getelementptr inbounds nuw i8, ptr %arrayidx116, i64 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc171, %for.body21
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %for.inc171 ], [ %1, %for.body21 ]
  %cmp25 = icmp sgt i64 %indvars.iv138, 1
  br i1 %cmp25, label %for.cond27, label %for.inc173

for.cond27:                                       ; preds = %for.cond24, %for.inc66
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %for.inc66 ], [ 0, %for.cond24 ]
  %exitcond100.not = icmp eq i64 %indvars.iv96, %indvars.iv138
  br i1 %exitcond100.not, label %for.cond69, label %for.body29

for.body29:                                       ; preds = %for.cond27
  %8 = mul nuw nsw i64 %indvars.iv96, %1
  %arrayidx33 = getelementptr inbounds nuw i32, ptr %arrayidx31, i64 %8
  %9 = load i32, ptr %arrayidx33, align 4, !tbaa !5, !invariant.load !14
  br label %for.cond35

for.cond35:                                       ; preds = %for.body37, %for.body29
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %for.body37 ], [ 1, %for.body29 ]
  %min.0 = phi i32 [ %spec.select, %for.body37 ], [ %9, %for.body29 ]
  %exitcond90.not = icmp eq i64 %indvars.iv86, %indvars.iv138
  br i1 %exitcond90.not, label %for.cond54.preheader, label %for.body37

for.cond54.preheader:                             ; preds = %for.cond35
  br label %for.cond54

for.body37:                                       ; preds = %for.cond35
  %arrayidx43 = getelementptr inbounds nuw i32, ptr %arrayidx33, i64 %indvars.iv86
  %10 = load i32, ptr %arrayidx43, align 4, !tbaa !5, !invariant.load !14
  %spec.select = call i32 @llvm.smin.i32(i32 %10, i32 %min.0)
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  br label %for.cond35, !llvm.loop !15

for.cond54:                                       ; preds = %for.cond54.preheader, %for.inc63
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %for.inc63 ], [ 0, %for.cond54.preheader ]
  %exitcond95.not = icmp eq i64 %indvars.iv91, %indvars.iv138
  br i1 %exitcond95.not, label %for.inc66, label %for.inc63

for.inc63:                                        ; preds = %for.cond54
  %arrayidx62 = getelementptr inbounds nuw i32, ptr %arrayidx33, i64 %indvars.iv91
  %11 = load i32, ptr %arrayidx62, align 4, !tbaa !5, !invariant.load !14
  %sub = sub nsw i32 %11, %min.0
  store i32 %sub, ptr %arrayidx62, align 4, !tbaa !5
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  br label %for.cond54, !llvm.loop !16

for.inc66:                                        ; preds = %for.cond54
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  br label %for.cond27, !llvm.loop !17

for.cond69:                                       ; preds = %for.cond27, %for.inc111
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %for.inc111 ], [ 0, %for.cond27 ]
  %exitcond115.not = icmp eq i64 %indvars.iv111, %indvars.iv138
  br i1 %exitcond115.not, label %for.end113, label %for.body71

for.body71:                                       ; preds = %for.cond69
  %arrayidx76 = getelementptr inbounds nuw i32, ptr %arrayidx31, i64 %indvars.iv111
  %12 = load i32, ptr %arrayidx76, align 4, !tbaa !5, !invariant.load !14
  br label %for.cond77

for.cond77:                                       ; preds = %for.body79, %for.body71
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %for.body79 ], [ 1, %for.body71 ]
  %min.2 = phi i32 [ %spec.select72, %for.body79 ], [ %12, %for.body71 ]
  %exitcond105.not = icmp eq i64 %indvars.iv101, %indvars.iv138
  br i1 %exitcond105.not, label %for.cond98.preheader, label %for.body79

for.cond98.preheader:                             ; preds = %for.cond77
  br label %for.cond98

for.body79:                                       ; preds = %for.cond77
  %13 = mul nuw nsw i64 %indvars.iv101, %1
  %gep = getelementptr inbounds nuw i32, ptr %arrayidx76, i64 %13
  %14 = load i32, ptr %gep, align 4, !tbaa !5, !invariant.load !14
  %spec.select72 = call i32 @llvm.smin.i32(i32 %14, i32 %min.2)
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  br label %for.cond77, !llvm.loop !18

for.cond98:                                       ; preds = %for.cond98.preheader, %for.inc108
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %for.inc108 ], [ 0, %for.cond98.preheader ]
  %exitcond110.not = icmp eq i64 %indvars.iv106, %indvars.iv138
  br i1 %exitcond110.not, label %for.inc111, label %for.inc108

for.inc108:                                       ; preds = %for.cond98
  %15 = mul nuw nsw i64 %indvars.iv106, %1
  %gep74 = getelementptr inbounds nuw i32, ptr %arrayidx76, i64 %15
  %16 = load i32, ptr %gep74, align 4, !tbaa !5, !invariant.load !14
  %sub107 = sub nsw i32 %16, %min.2
  store i32 %sub107, ptr %gep74, align 4, !tbaa !5
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  br label %for.cond98, !llvm.loop !19

for.inc111:                                       ; preds = %for.cond98
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1
  br label %for.cond69, !llvm.loop !20

for.end113:                                       ; preds = %for.cond69
  %17 = load i32, ptr %arrayidx117, align 4, !tbaa !5, !invariant.load !14
  store i32 %17, ptr %arrayidx23, align 4, !tbaa !5
  br label %for.cond120

for.cond120:                                      ; preds = %for.inc142, %for.end113
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %for.inc142 ], [ 2, %for.end113 ]
  %exitcond126.not = icmp eq i64 %indvars.iv121, %indvars.iv138
  br i1 %exitcond126.not, label %for.cond145, label %for.cond123.preheader

for.cond123.preheader:                            ; preds = %for.cond120
  %18 = mul nuw nsw i64 %indvars.iv121, %1
  %arrayidx129 = getelementptr inbounds nuw i32, ptr %arrayidx31, i64 %18
  %19 = add nsw i64 %indvars.iv121, -1
  %20 = mul nuw nsw i64 %19, %1
  %arrayidx136 = getelementptr inbounds i32, ptr %arrayidx31, i64 %20
  br label %for.cond123

for.cond123:                                      ; preds = %for.cond123.preheader, %for.inc139
  %indvars.iv116 = phi i64 [ 0, %for.cond123.preheader ], [ %indvars.iv.next117, %for.inc139 ]
  %exitcond120.not = icmp eq i64 %indvars.iv116, %1
  br i1 %exitcond120.not, label %for.inc142, label %for.inc139

for.inc139:                                       ; preds = %for.cond123
  %arrayidx131 = getelementptr inbounds nuw i32, ptr %arrayidx129, i64 %indvars.iv116
  %21 = load i32, ptr %arrayidx131, align 4, !tbaa !5, !invariant.load !14
  %arrayidx138 = getelementptr inbounds nuw i32, ptr %arrayidx136, i64 %indvars.iv116
  store i32 %21, ptr %arrayidx138, align 4, !tbaa !5
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1
  br label %for.cond123, !llvm.loop !21

for.inc142:                                       ; preds = %for.cond123
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  br label %for.cond120, !llvm.loop !22

for.cond145:                                      ; preds = %for.cond120, %for.inc168
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %for.inc168 ], [ 2, %for.cond120 ]
  %exitcond137.not = icmp eq i64 %indvars.iv133, %indvars.iv138
  br i1 %exitcond137.not, label %for.inc171, label %for.cond148.preheader

for.cond148.preheader:                            ; preds = %for.cond145
  %invariant.gep = getelementptr i32, ptr %arrayidx31, i64 %indvars.iv133
  br label %for.cond148

for.cond148:                                      ; preds = %for.cond148.preheader, %for.inc165
  %indvars.iv127 = phi i64 [ 0, %for.cond148.preheader ], [ %indvars.iv.next128, %for.inc165 ]
  %exitcond132.not = icmp eq i64 %indvars.iv127, %wide.trip.count131
  br i1 %exitcond132.not, label %for.inc168, label %for.inc165

for.inc165:                                       ; preds = %for.cond148
  %22 = mul nuw nsw i64 %indvars.iv127, %1
  %gep151 = getelementptr i32, ptr %invariant.gep, i64 %22
  %23 = load i32, ptr %gep151, align 4, !tbaa !5, !invariant.load !14
  %arrayidx164 = getelementptr i8, ptr %gep151, i64 -4
  store i32 %23, ptr %arrayidx164, align 4, !tbaa !5
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1
  br label %for.cond148, !llvm.loop !23

for.inc168:                                       ; preds = %for.cond148
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1
  br label %for.cond145, !llvm.loop !24

for.inc171:                                       ; preds = %for.cond145
  %indvars.iv.next139 = add nsw i64 %indvars.iv138, -1
  br label %for.cond24, !llvm.loop !25

for.inc173:                                       ; preds = %for.cond24
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1
  br label %for.cond19, !llvm.loop !26

for.cond176:                                      ; preds = %for.cond19, %for.inc183
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %for.inc183 ], [ 0, %for.cond19 ]
  %exitcond150.not = icmp eq i64 %indvars.iv146, %wide.trip.count84
  br i1 %exitcond150.not, label %for.end185, label %for.inc183

for.inc183:                                       ; preds = %for.cond176
  %arrayidx180 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv146
  %24 = load i32, ptr %arrayidx180, align 4, !tbaa !5, !invariant.load !14
  %call181 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %24)
  %call182 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call181, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1
  br label %for.cond176, !llvm.loop !27

for.end185:                                       ; preds = %for.cond176
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %nq) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
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
!13 = distinct !{!13, !10, !11}
!14 = !{}
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
!27 = distinct !{!27, !10, !11}
