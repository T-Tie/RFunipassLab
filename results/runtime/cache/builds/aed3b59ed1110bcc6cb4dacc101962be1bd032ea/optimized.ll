; ModuleID = '<stdin>'
source_filename = "/tmp/tmpzyvify23.cpp"
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
  %a = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %invariant.gep = getelementptr inbounds nuw i8, ptr %a, i64 400
  %invariant.gep70 = getelementptr inbounds nuw i8, ptr %a, i64 4
  %add.ptr119 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup16, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc181, %for.cond.cleanup16 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %k.0, %0
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc11, %for.body
  %1 = phi i32 [ %3, %for.inc11 ], [ %0, %for.body ]
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %for.inc11 ], [ 0, %for.body ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv75, %2
  br i1 %cmp2, label %for.cond4.preheader, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.cond1
  %sub = add nsw i32 %1, -1
  %smax135 = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  br label %for.cond14

for.cond4.preheader:                              ; preds = %for.cond1
  %add.ptr = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv75
  br label %for.cond4

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %3 = phi i32 [ %1, %for.cond4.preheader ], [ %.pre, %for.body6 ]
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.body6 ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp5, label %for.body6, label %for.inc11

for.body6:                                        ; preds = %for.cond4
  %add.ptr9 = getelementptr inbounds nuw i32, ptr %add.ptr, i64 %indvars.iv
  %call10 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %add.ptr9)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc11:                                        ; preds = %for.cond4
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  br label %for.cond1, !llvm.loop !12

for.cond14:                                       ; preds = %for.cond14.preheader, %for.end174
  %indvars.iv124 = phi i32 [ %sub, %for.cond14.preheader ], [ %indvars.iv.next125, %for.end174 ]
  %indvars.iv82 = phi i32 [ %1, %for.cond14.preheader ], [ %indvars.iv.next83, %for.end174 ]
  %ans.0 = phi i32 [ 0, %for.cond14.preheader ], [ %add, %for.end174 ]
  %p.0 = phi i32 [ 0, %for.cond14.preheader ], [ %inc176, %for.end174 ]
  %smax132 = call i32 @llvm.smax.i32(i32 %indvars.iv82, i32 1)
  %smax126 = call i32 @llvm.smax.i32(i32 %indvars.iv124, i32 0)
  %exitcond136.not = icmp eq i32 %p.0, %smax135
  br i1 %exitcond136.not, label %for.cond.cleanup16, label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.cond14
  %smax107 = call i32 @llvm.smax.i32(i32 %indvars.iv82, i32 0)
  %wide.trip.count92 = zext nneg i32 %smax107 to i64
  %wide.trip.count = zext i32 %indvars.iv82 to i64
  br label %for.cond20

for.cond.cleanup16:                               ; preds = %for.cond14
  %call178 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %ans.0)
  %vtable.i = load ptr, ptr %call178, align 8, !tbaa !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call178, i64 %vbase.offset.i
  %call.i65 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call178, i8 noundef signext %call.i65)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #5
  %inc181 = add nuw nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !15

for.cond20:                                       ; preds = %for.cond20.preheader, %for.end57
  %indvars.iv89 = phi i64 [ 0, %for.cond20.preheader ], [ %indvars.iv.next90, %for.end57 ]
  %min.0.in = phi ptr [ %a, %for.cond20.preheader ], [ %gep, %for.end57 ]
  %exitcond93.not = icmp eq i64 %indvars.iv89, %wide.trip.count92
  br i1 %exitcond93.not, label %for.cond68.preheader, label %for.body23

for.cond68.preheader:                             ; preds = %for.cond20
  %wide.trip.count97 = zext i32 %indvars.iv82 to i64
  br label %for.cond68

for.body23:                                       ; preds = %for.cond20
  %min.0 = load i32, ptr %min.0.in, align 4, !tbaa !5
  %add.ptr30 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv89
  br label %for.cond24

for.cond24:                                       ; preds = %for.body27, %for.body23
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %for.body27 ], [ 0, %for.body23 ]
  %min.1 = phi i32 [ %spec.select, %for.body27 ], [ %min.0, %for.body23 ]
  %exitcond.not = icmp eq i64 %indvars.iv78, %wide.trip.count
  br i1 %exitcond.not, label %for.cond44, label %for.body27

for.body27:                                       ; preds = %for.cond24
  %add.ptr33 = getelementptr inbounds nuw i32, ptr %add.ptr30, i64 %indvars.iv78
  %5 = load i32, ptr %add.ptr33, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %min.1, i32 %5)
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %for.cond24, !llvm.loop !16

for.cond44:                                       ; preds = %for.cond24, %for.body47
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %for.body47 ], [ 0, %for.cond24 ]
  %exitcond88.not = icmp eq i64 %indvars.iv84, %wide.trip.count
  br i1 %exitcond88.not, label %for.end57, label %for.body47

for.body47:                                       ; preds = %for.cond44
  %add.ptr53 = getelementptr inbounds nuw i32, ptr %add.ptr30, i64 %indvars.iv84
  %6 = load i32, ptr %add.ptr53, align 4, !tbaa !5
  %sub54 = sub nsw i32 %6, %min.1
  store i32 %sub54, ptr %add.ptr53, align 4, !tbaa !5
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  br label %for.cond44, !llvm.loop !17

for.end57:                                        ; preds = %for.cond44
  %gep = getelementptr inbounds nuw [100 x i32], ptr %invariant.gep, i64 %indvars.iv89
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  br label %for.cond20, !llvm.loop !18

for.cond68:                                       ; preds = %for.cond68.preheader, %for.end107
  %indvars.iv104 = phi i64 [ 0, %for.cond68.preheader ], [ %indvars.iv.next105, %for.end107 ]
  %min.3.in = phi ptr [ %a, %for.cond68.preheader ], [ %gep71, %for.end107 ]
  %exitcond109.not = icmp eq i64 %indvars.iv104, %wide.trip.count92
  br i1 %exitcond109.not, label %for.end115, label %for.body71

for.body71:                                       ; preds = %for.cond68
  %min.3 = load i32, ptr %min.3.in, align 4, !tbaa !5
  %invariant.gep66 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv104
  br label %for.cond72

for.cond72:                                       ; preds = %for.body75, %for.body71
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %for.body75 ], [ 0, %for.body71 ]
  %min.4 = phi i32 [ %spec.select64, %for.body75 ], [ %min.3, %for.body71 ]
  %exitcond98.not = icmp eq i64 %indvars.iv94, %wide.trip.count97
  br i1 %exitcond98.not, label %for.cond94, label %for.body75

for.body75:                                       ; preds = %for.cond72
  %gep67 = getelementptr inbounds nuw [100 x i32], ptr %invariant.gep66, i64 %indvars.iv94
  %7 = load i32, ptr %gep67, align 4, !tbaa !5
  %spec.select64 = call i32 @llvm.smin.i32(i32 %min.4, i32 %7)
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  br label %for.cond72, !llvm.loop !19

for.cond94:                                       ; preds = %for.cond72, %for.body97
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %for.body97 ], [ 0, %for.cond72 ]
  %exitcond103.not = icmp eq i64 %indvars.iv99, %wide.trip.count97
  br i1 %exitcond103.not, label %for.end107, label %for.body97

for.body97:                                       ; preds = %for.cond94
  %gep69 = getelementptr inbounds nuw [100 x i32], ptr %invariant.gep66, i64 %indvars.iv99
  %8 = load i32, ptr %gep69, align 4, !tbaa !5
  %sub104 = sub nsw i32 %8, %min.4
  store i32 %sub104, ptr %gep69, align 4, !tbaa !5
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1
  br label %for.cond94, !llvm.loop !20

for.end107:                                       ; preds = %for.cond94
  %gep71 = getelementptr inbounds nuw i32, ptr %invariant.gep70, i64 %indvars.iv104
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  br label %for.cond68, !llvm.loop !21

for.end115:                                       ; preds = %for.cond68
  %9 = load i32, ptr %add.ptr119, align 4, !tbaa !5
  %wide.trip.count119 = zext nneg i32 %smax132 to i64
  %wide.trip.count113 = zext i32 %indvars.iv82 to i64
  br label %for.cond120

for.cond120:                                      ; preds = %for.inc144, %for.end115
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %for.inc144 ], [ 1, %for.end115 ]
  %exitcond120.not = icmp eq i64 %indvars.iv115, %wide.trip.count119
  br i1 %exitcond120.not, label %for.cond147.preheader, label %for.cond124.preheader

for.cond147.preheader:                            ; preds = %for.cond120
  %wide.trip.count127 = zext nneg i32 %smax126 to i64
  br label %for.cond147

for.cond124.preheader:                            ; preds = %for.cond120
  %add.ptr130 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv115
  %add.ptr131 = getelementptr inbounds nuw i8, ptr %add.ptr130, i64 400
  br label %for.cond124

for.cond124:                                      ; preds = %for.cond124.preheader, %for.body127
  %indvars.iv110 = phi i64 [ 0, %for.cond124.preheader ], [ %indvars.iv.next111, %for.body127 ]
  %exitcond114.not = icmp eq i64 %indvars.iv110, %wide.trip.count113
  br i1 %exitcond114.not, label %for.inc144, label %for.body127

for.body127:                                      ; preds = %for.cond124
  %add.ptr134 = getelementptr inbounds nuw i32, ptr %add.ptr131, i64 %indvars.iv110
  %10 = load i32, ptr %add.ptr134, align 4, !tbaa !5
  %add.ptr140 = getelementptr inbounds nuw i32, ptr %add.ptr130, i64 %indvars.iv110
  store i32 %10, ptr %add.ptr140, align 4, !tbaa !5
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  br label %for.cond124, !llvm.loop !22

for.inc144:                                       ; preds = %for.cond124
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1
  br label %for.cond120, !llvm.loop !23

for.cond147:                                      ; preds = %for.cond147.preheader, %for.inc172
  %indvars.iv129 = phi i64 [ 1, %for.cond147.preheader ], [ %indvars.iv.next130, %for.inc172 ]
  %exitcond134.not = icmp eq i64 %indvars.iv129, %wide.trip.count119
  br i1 %exitcond134.not, label %for.end174, label %for.cond151.preheader

for.cond151.preheader:                            ; preds = %for.cond147
  %invariant.gep72 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv129
  br label %for.cond151

for.cond151:                                      ; preds = %for.cond151.preheader, %for.body155
  %indvars.iv121 = phi i64 [ 0, %for.cond151.preheader ], [ %indvars.iv.next122, %for.body155 ]
  %exitcond128.not = icmp eq i64 %indvars.iv121, %wide.trip.count127
  br i1 %exitcond128.not, label %for.inc172, label %for.body155

for.body155:                                      ; preds = %for.cond151
  %gep73 = getelementptr inbounds nuw [100 x i32], ptr %invariant.gep72, i64 %indvars.iv121
  %add.ptr162 = getelementptr inbounds nuw i8, ptr %gep73, i64 4
  %11 = load i32, ptr %add.ptr162, align 4, !tbaa !5
  store i32 %11, ptr %gep73, align 4, !tbaa !5
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  br label %for.cond151, !llvm.loop !24

for.inc172:                                       ; preds = %for.cond151
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1
  br label %for.cond147, !llvm.loop !25

for.end174:                                       ; preds = %for.cond147
  %add = add nsw i32 %9, %ans.0
  %inc176 = add nuw i32 %p.0, 1
  %indvars.iv.next83 = add i32 %indvars.iv82, -1
  %indvars.iv.next125 = add i32 %indvars.iv124, -1
  br label %for.cond14, !llvm.loop !26
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

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
