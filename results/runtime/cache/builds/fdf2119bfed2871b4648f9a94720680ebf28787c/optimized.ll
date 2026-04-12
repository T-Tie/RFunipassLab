; ModuleID = '<stdin>'
source_filename = "/tmp/tmpz565ecju.cpp"
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
  %n0 = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %temp = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n0) #7
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(40000) %a, i8 noundef 0, i64 noundef 40000, i1 noundef false) #8
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %temp) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n0)
  %arrayidx110 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup17, %entry
  %min.0 = phi i32 [ undef, %entry ], [ %min.1, %for.cond.cleanup17 ]
  %z.0 = phi i32 [ 0, %entry ], [ %inc196, %for.cond.cleanup17 ]
  %0 = load i32, ptr %n0, align 4, !tbaa !5
  %cmp = icmp slt i32 %z.0, %0
  br i1 %cmp, label %for.cond1, label %for.end197

for.cond1:                                        ; preds = %for.cond, %for.cond.cleanup7
  %1 = phi i32 [ %4, %for.cond.cleanup7 ], [ %0, %for.cond ]
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %for.cond.cleanup7 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv67, %2
  br i1 %cmp2, label %for.cond5, label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.cond1
  %3 = zext i32 %1 to i64
  br label %for.cond15

for.cond5:                                        ; preds = %for.cond1, %for.body8
  %4 = phi i32 [ %.pre, %for.body8 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ 0, %for.cond1 ]
  %5 = sext i32 %4 to i64
  %cmp6 = icmp slt i64 %indvars.iv, %5
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7

for.cond.cleanup7:                                ; preds = %for.cond5
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  br label %for.cond1, !llvm.loop !9

for.body8:                                        ; preds = %for.cond5
  %arrayidx10 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv67, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n0, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !12

for.cond15:                                       ; preds = %for.cond15.preheader, %for.cond.cleanup168
  %indvars.iv133 = phi i64 [ %3, %for.cond15.preheader ], [ %indvars.iv.next134, %for.cond.cleanup168 ]
  %s.0 = phi i32 [ 0, %for.cond15.preheader ], [ %add, %for.cond.cleanup168 ]
  %min.1 = phi i32 [ %min.0, %for.cond15.preheader ], [ %min.5, %for.cond.cleanup168 ]
  %6 = trunc nuw i64 %indvars.iv133 to i32
  %cmp16 = icmp sgt i32 %6, 1
  br i1 %cmp16, label %for.cond19, label %for.cond.cleanup17

for.cond.cleanup17:                               ; preds = %for.cond15
  %call193 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %s.0)
  %call194 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call193, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc196 = add nuw nsw i32 %z.0, 1
  br label %for.cond, !llvm.loop !13

for.cond19:                                       ; preds = %for.cond15, %for.cond.cleanup47
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %for.cond.cleanup47 ], [ 0, %for.cond15 ]
  %min.2 = phi i32 [ %min.3, %for.cond.cleanup47 ], [ %min.1, %for.cond15 ]
  %exitcond82.not = icmp eq i64 %indvars.iv78, %indvars.iv133
  br i1 %exitcond82.not, label %for.cond60, label %for.cond23

for.cond23:                                       ; preds = %for.cond19, %for.body26
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.body26 ], [ 0, %for.cond19 ]
  %min.3 = phi i32 [ %min.4, %for.body26 ], [ %min.2, %for.cond19 ]
  %exitcond.not = icmp eq i64 %indvars.iv70, %indvars.iv133
  br i1 %exitcond.not, label %for.cond45.preheader, label %for.body26

for.cond45.preheader:                             ; preds = %for.cond23
  br label %for.cond45

for.body26:                                       ; preds = %for.cond23
  %cmp27 = icmp eq i64 %indvars.iv70, 0
  %7 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv78, i64 %indvars.iv70
  %8 = load i32, ptr %7, align 4, !tbaa !5, !invariant.load !14
  %9 = call i32 @llvm.smin.i32(i32 %min.3, i32 %8)
  %min.4 = select i1 %cmp27, i32 %8, i32 %9
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %for.cond23, !llvm.loop !15

for.cond45:                                       ; preds = %for.cond45.preheader, %for.body48
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %for.body48 ], [ 0, %for.cond45.preheader ]
  %exitcond77.not = icmp eq i64 %indvars.iv73, %indvars.iv133
  br i1 %exitcond77.not, label %for.cond.cleanup47, label %for.body48

for.cond.cleanup47:                               ; preds = %for.cond45
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %for.cond19, !llvm.loop !16

for.body48:                                       ; preds = %for.cond45
  %arrayidx52 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv78, i64 %indvars.iv73
  %10 = load i32, ptr %arrayidx52, align 4, !tbaa !5, !invariant.load !14
  %sub = sub nsw i32 %10, %min.3
  store i32 %sub, ptr %arrayidx52, align 4, !tbaa !5
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  br label %for.cond45, !llvm.loop !17

for.cond60:                                       ; preds = %for.cond19, %for.cond.cleanup96
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %for.cond.cleanup96 ], [ 0, %for.cond19 ]
  %min.5 = phi i32 [ %min.6, %for.cond.cleanup96 ], [ %min.2, %for.cond19 ]
  %exitcond97.not = icmp eq i64 %indvars.iv93, %indvars.iv133
  br i1 %exitcond97.not, label %for.cond.cleanup62, label %for.cond65

for.cond.cleanup62:                               ; preds = %for.cond60
  %11 = load i32, ptr %arrayidx110, align 4, !tbaa !5
  br label %for.cond112

for.cond65:                                       ; preds = %for.cond60, %for.body68
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %for.body68 ], [ 0, %for.cond60 ]
  %min.6 = phi i32 [ %min.7, %for.body68 ], [ %min.5, %for.cond60 ]
  %exitcond87.not = icmp eq i64 %indvars.iv83, %indvars.iv133
  br i1 %exitcond87.not, label %for.cond94.preheader, label %for.body68

for.cond94.preheader:                             ; preds = %for.cond65
  br label %for.cond94

for.body68:                                       ; preds = %for.cond65
  %cmp69 = icmp eq i64 %indvars.iv83, 0
  %12 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv83, i64 %indvars.iv93
  %13 = load i32, ptr %12, align 4, !tbaa !5, !invariant.load !14
  %14 = call i32 @llvm.smin.i32(i32 %min.6, i32 %13)
  %min.7 = select i1 %cmp69, i32 %13, i32 %14
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  br label %for.cond65, !llvm.loop !18

for.cond94:                                       ; preds = %for.cond94.preheader, %for.body97
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %for.body97 ], [ 0, %for.cond94.preheader ]
  %exitcond92.not = icmp eq i64 %indvars.iv88, %indvars.iv133
  br i1 %exitcond92.not, label %for.cond.cleanup96, label %for.body97

for.cond.cleanup96:                               ; preds = %for.cond94
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  br label %for.cond60, !llvm.loop !19

for.body97:                                       ; preds = %for.cond94
  %arrayidx101 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv88, i64 %indvars.iv93
  %15 = load i32, ptr %arrayidx101, align 4, !tbaa !5, !invariant.load !14
  %sub102 = sub nsw i32 %15, %min.6
  store i32 %sub102, ptr %arrayidx101, align 4, !tbaa !5
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  br label %for.cond94, !llvm.loop !20

for.cond112:                                      ; preds = %for.cond.cleanup119, %for.cond.cleanup62
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %for.cond.cleanup119 ], [ 0, %for.cond.cleanup62 ]
  %exitcond107.not = icmp eq i64 %indvars.iv103, %indvars.iv133
  br i1 %exitcond107.not, label %for.cond136, label %for.cond117

for.cond117:                                      ; preds = %for.cond112, %for.body120
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %for.body120 ], [ 0, %for.cond112 ]
  %exitcond102.not = icmp eq i64 %indvars.iv98, %indvars.iv133
  br i1 %exitcond102.not, label %for.cond.cleanup119, label %for.body120

for.cond.cleanup119:                              ; preds = %for.cond117
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  br label %for.cond112, !llvm.loop !21

for.body120:                                      ; preds = %for.cond117
  %arrayidx124 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv103, i64 %indvars.iv98
  %16 = load i32, ptr %arrayidx124, align 4, !tbaa !5, !invariant.load !14
  %arrayidx128 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %temp, i64 0, i64 %indvars.iv103, i64 %indvars.iv98
  store i32 %16, ptr %arrayidx128, align 4, !tbaa !5
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  br label %for.cond117, !llvm.loop !22

for.cond136:                                      ; preds = %for.cond112, %for.body139
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %for.body139 ], [ 2, %for.cond112 ]
  %exitcond113.not = icmp eq i64 %indvars.iv108, %indvars.iv133
  br i1 %exitcond113.not, label %for.cond151, label %for.body139

for.body139:                                      ; preds = %for.cond136
  %arrayidx141 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %temp, i64 0, i64 %indvars.iv108
  %17 = load i32, ptr %arrayidx141, align 16, !tbaa !5, !invariant.load !14
  %18 = add nsw i64 %indvars.iv108, -1
  %arrayidx145 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %18
  store i32 %17, ptr %arrayidx145, align 16, !tbaa !5
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1
  br label %for.cond136, !llvm.loop !23

for.cond151:                                      ; preds = %for.cond136, %for.body154
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %for.body154 ], [ 2, %for.cond136 ]
  %exitcond119.not = icmp eq i64 %indvars.iv114, %indvars.iv133
  br i1 %exitcond119.not, label %for.cond166, label %for.body154

for.body154:                                      ; preds = %for.cond151
  %arrayidx157 = getelementptr inbounds nuw [100 x i32], ptr %temp, i64 0, i64 %indvars.iv114
  %19 = load i32, ptr %arrayidx157, align 4, !tbaa !5, !invariant.load !14
  %20 = add nsw i64 %indvars.iv114, -1
  %arrayidx161 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %20
  store i32 %19, ptr %arrayidx161, align 4, !tbaa !5
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  br label %for.cond151, !llvm.loop !24

for.cond166:                                      ; preds = %for.cond151, %for.cond.cleanup173
  %indvars.iv126 = phi i64 [ %indvars.iv.next127, %for.cond.cleanup173 ], [ 2, %for.cond151 ]
  %exitcond131.not = icmp eq i64 %indvars.iv126, %indvars.iv133
  br i1 %exitcond131.not, label %for.cond.cleanup168, label %for.cond171.preheader

for.cond171.preheader:                            ; preds = %for.cond166
  %21 = add nsw i64 %indvars.iv126, -1
  br label %for.cond171

for.cond.cleanup168:                              ; preds = %for.cond166
  %add = add nsw i32 %11, %s.0
  %indvars.iv.next134 = add nsw i64 %indvars.iv133, -1
  br label %for.cond15, !llvm.loop !25

for.cond171:                                      ; preds = %for.cond171.preheader, %for.body174
  %indvars.iv120 = phi i64 [ 2, %for.cond171.preheader ], [ %indvars.iv.next121, %for.body174 ]
  %exitcond125.not = icmp eq i64 %indvars.iv120, %indvars.iv133
  br i1 %exitcond125.not, label %for.cond.cleanup173, label %for.body174

for.cond.cleanup173:                              ; preds = %for.cond171
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1
  br label %for.cond166, !llvm.loop !26

for.body174:                                      ; preds = %for.cond171
  %arrayidx178 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %temp, i64 0, i64 %indvars.iv126, i64 %indvars.iv120
  %22 = load i32, ptr %arrayidx178, align 4, !tbaa !5, !invariant.load !14
  %23 = add nsw i64 %indvars.iv120, -1
  %arrayidx184 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %21, i64 %23
  store i32 %22, ptr %arrayidx184, align 4, !tbaa !5
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1
  br label %for.cond171, !llvm.loop !27

for.end197:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %temp) #9
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n0) #9
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nofree }
attributes #9 = { nounwind }

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
