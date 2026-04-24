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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nq) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %nq)
  %0 = load i32, ptr %nq, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  %3 = mul nuw i64 %1, %1
  %4 = mul nuw i64 %3, %1
  %vla1 = alloca i32, i64 %4, align 16
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count109 = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %for.inc16 ], [ 0, %entry ]
  %exitcond110.not = icmp eq i64 %indvars.iv106, %wide.trip.count109
  br i1 %exitcond110.not, label %for.cond19.preheader, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %5 = mul nsw i64 %3, %indvars.iv106
  %arrayidx = getelementptr inbounds i32, ptr %vla1, i64 %5
  br label %for.cond2

for.cond19.preheader:                             ; preds = %for.cond
  %sub149 = add i32 %0, -1
  %smax155 = call i32 @llvm.smax.i32(i32 %sub149, i32 0)
  %wide.trip.count156 = zext nneg i32 %smax155 to i64
  br label %for.cond19

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc13
  %indvars.iv101 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next102, %for.inc13 ]
  %exitcond105.not = icmp eq i64 %indvars.iv101, %1
  br i1 %exitcond105.not, label %for.inc16, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.cond2
  %6 = mul nuw nsw i64 %indvars.iv101, %1
  %arrayidx9 = getelementptr inbounds nuw i32, ptr %arrayidx, i64 %6
  br label %for.cond5

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %indvars.iv = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next, %for.body7 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %1
  br i1 %exitcond.not, label %for.inc13, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %arrayidx11 = getelementptr inbounds nuw i32, ptr %arrayidx9, i64 %indvars.iv
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx11)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond5, !llvm.loop !9

for.inc13:                                        ; preds = %for.cond5
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  br label %for.cond2, !llvm.loop !12

for.inc16:                                        ; preds = %for.cond2
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  br label %for.cond, !llvm.loop !13

for.cond19:                                       ; preds = %for.cond19.preheader, %for.inc173
  %indvars.iv166 = phi i64 [ 0, %for.cond19.preheader ], [ %indvars.iv.next167, %for.inc173 ]
  %exitcond170.not = icmp eq i64 %indvars.iv166, %wide.trip.count109
  br i1 %exitcond170.not, label %for.cond176, label %for.body21

for.body21:                                       ; preds = %for.cond19
  %arrayidx23 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv166
  store i32 0, ptr %arrayidx23, align 4, !tbaa !5
  %7 = mul nsw i64 %3, %indvars.iv166
  %arrayidx31 = getelementptr inbounds i32, ptr %vla1, i64 %7
  %arrayidx116 = getelementptr inbounds nuw i32, ptr %arrayidx31, i64 %1
  %arrayidx117 = getelementptr inbounds nuw i8, ptr %arrayidx116, i64 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc171, %for.body21
  %8 = phi i32 [ %add, %for.inc171 ], [ 0, %for.body21 ]
  %indvars.iv163 = phi i64 [ %indvars.iv.next164, %for.inc171 ], [ %1, %for.body21 ]
  %cmp25 = icmp sgt i64 %indvars.iv163, 1
  br i1 %cmp25, label %for.cond27, label %for.inc173

for.cond27:                                       ; preds = %for.cond24, %for.inc66
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %for.inc66 ], [ 0, %for.cond24 ]
  %exitcond125.not = icmp eq i64 %indvars.iv121, %indvars.iv163
  br i1 %exitcond125.not, label %for.cond69, label %for.body29

for.body29:                                       ; preds = %for.cond27
  %9 = mul nuw nsw i64 %indvars.iv121, %1
  %arrayidx33 = getelementptr inbounds nuw i32, ptr %arrayidx31, i64 %9
  %10 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  br label %for.cond35

for.cond35:                                       ; preds = %for.body37, %for.body29
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %for.body37 ], [ 1, %for.body29 ]
  %min.0 = phi i32 [ %spec.select, %for.body37 ], [ %10, %for.body29 ]
  %exitcond115.not = icmp eq i64 %indvars.iv111, %indvars.iv163
  br i1 %exitcond115.not, label %for.cond54, label %for.body37

for.body37:                                       ; preds = %for.cond35
  %arrayidx43 = getelementptr inbounds nuw i32, ptr %arrayidx33, i64 %indvars.iv111
  %11 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %11, i32 %min.0)
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1
  br label %for.cond35, !llvm.loop !14

for.cond54:                                       ; preds = %for.cond35, %for.body56
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %for.body56 ], [ 0, %for.cond35 ]
  %exitcond120.not = icmp eq i64 %indvars.iv116, %indvars.iv163
  br i1 %exitcond120.not, label %for.inc66, label %for.body56

for.body56:                                       ; preds = %for.cond54
  %arrayidx62 = getelementptr inbounds nuw i32, ptr %arrayidx33, i64 %indvars.iv116
  %12 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %sub = sub nsw i32 %12, %min.0
  store i32 %sub, ptr %arrayidx62, align 4, !tbaa !5
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1
  br label %for.cond54, !llvm.loop !15

for.inc66:                                        ; preds = %for.cond54
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  br label %for.cond27, !llvm.loop !16

for.cond69:                                       ; preds = %for.cond27, %for.inc111
  %indvars.iv136 = phi i64 [ %indvars.iv.next137, %for.inc111 ], [ 0, %for.cond27 ]
  %exitcond140.not = icmp eq i64 %indvars.iv136, %indvars.iv163
  br i1 %exitcond140.not, label %for.end113, label %for.body71

for.body71:                                       ; preds = %for.cond69
  %arrayidx76 = getelementptr inbounds nuw i32, ptr %arrayidx31, i64 %indvars.iv136
  %13 = load i32, ptr %arrayidx76, align 4, !tbaa !5
  br label %for.cond77

for.cond77:                                       ; preds = %for.body79, %for.body71
  %indvars.iv126 = phi i64 [ %indvars.iv.next127, %for.body79 ], [ 1, %for.body71 ]
  %min.2 = phi i32 [ %spec.select94, %for.body79 ], [ %13, %for.body71 ]
  %exitcond130.not = icmp eq i64 %indvars.iv126, %indvars.iv163
  br i1 %exitcond130.not, label %for.cond98, label %for.body79

for.body79:                                       ; preds = %for.cond77
  %14 = mul nuw nsw i64 %indvars.iv126, %1
  %gep = getelementptr inbounds nuw i32, ptr %arrayidx76, i64 %14
  %15 = load i32, ptr %gep, align 4, !tbaa !5
  %spec.select94 = call i32 @llvm.smin.i32(i32 %15, i32 %min.2)
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1
  br label %for.cond77, !llvm.loop !17

for.cond98:                                       ; preds = %for.cond77, %for.body100
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %for.body100 ], [ 0, %for.cond77 ]
  %exitcond135.not = icmp eq i64 %indvars.iv131, %indvars.iv163
  br i1 %exitcond135.not, label %for.inc111, label %for.body100

for.body100:                                      ; preds = %for.cond98
  %16 = mul nuw nsw i64 %indvars.iv131, %1
  %gep97 = getelementptr inbounds nuw i32, ptr %arrayidx76, i64 %16
  %17 = load i32, ptr %gep97, align 4, !tbaa !5
  %sub107 = sub nsw i32 %17, %min.2
  store i32 %sub107, ptr %gep97, align 4, !tbaa !5
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1
  br label %for.cond98, !llvm.loop !18

for.inc111:                                       ; preds = %for.cond98
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1
  br label %for.cond69, !llvm.loop !19

for.end113:                                       ; preds = %for.cond69
  %18 = load i32, ptr %arrayidx117, align 4, !tbaa !5
  %add = add nsw i32 %8, %18
  store i32 %add, ptr %arrayidx23, align 4, !tbaa !5
  br label %for.cond120

for.cond120:                                      ; preds = %for.inc142, %for.end113
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %for.inc142 ], [ 2, %for.end113 ]
  %exitcond151.not = icmp eq i64 %indvars.iv146, %indvars.iv163
  br i1 %exitcond151.not, label %for.cond145, label %for.cond123.preheader

for.cond123.preheader:                            ; preds = %for.cond120
  %19 = mul nuw nsw i64 %indvars.iv146, %1
  %arrayidx129 = getelementptr inbounds nuw i32, ptr %arrayidx31, i64 %19
  %20 = add nsw i64 %indvars.iv146, -1
  %21 = mul nuw nsw i64 %20, %1
  %arrayidx136 = getelementptr inbounds i32, ptr %arrayidx31, i64 %21
  br label %for.cond123

for.cond123:                                      ; preds = %for.cond123.preheader, %for.body125
  %indvars.iv141 = phi i64 [ 0, %for.cond123.preheader ], [ %indvars.iv.next142, %for.body125 ]
  %exitcond145.not = icmp eq i64 %indvars.iv141, %1
  br i1 %exitcond145.not, label %for.inc142, label %for.body125

for.body125:                                      ; preds = %for.cond123
  %arrayidx131 = getelementptr inbounds nuw i32, ptr %arrayidx129, i64 %indvars.iv141
  %22 = load i32, ptr %arrayidx131, align 4, !tbaa !5
  %arrayidx138 = getelementptr inbounds nuw i32, ptr %arrayidx136, i64 %indvars.iv141
  store i32 %22, ptr %arrayidx138, align 4, !tbaa !5
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1
  br label %for.cond123, !llvm.loop !20

for.inc142:                                       ; preds = %for.cond123
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1
  br label %for.cond120, !llvm.loop !21

for.cond145:                                      ; preds = %for.cond120, %for.inc168
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %for.inc168 ], [ 2, %for.cond120 ]
  %exitcond162.not = icmp eq i64 %indvars.iv158, %indvars.iv163
  br i1 %exitcond162.not, label %for.inc171, label %for.cond148.preheader

for.cond148.preheader:                            ; preds = %for.cond145
  %invariant.gep98 = getelementptr inbounds nuw i32, ptr %arrayidx31, i64 %indvars.iv158
  br label %for.cond148

for.cond148:                                      ; preds = %for.cond148.preheader, %for.body151
  %indvars.iv152 = phi i64 [ 0, %for.cond148.preheader ], [ %indvars.iv.next153, %for.body151 ]
  %exitcond157.not = icmp eq i64 %indvars.iv152, %wide.trip.count156
  br i1 %exitcond157.not, label %for.inc168, label %for.body151

for.body151:                                      ; preds = %for.cond148
  %23 = mul nuw nsw i64 %indvars.iv152, %1
  %gep99 = getelementptr inbounds nuw i32, ptr %invariant.gep98, i64 %23
  %24 = load i32, ptr %gep99, align 4, !tbaa !5
  %arrayidx164 = getelementptr i8, ptr %gep99, i64 -4
  store i32 %24, ptr %arrayidx164, align 4, !tbaa !5
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1
  br label %for.cond148, !llvm.loop !22

for.inc168:                                       ; preds = %for.cond148
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1
  br label %for.cond145, !llvm.loop !23

for.inc171:                                       ; preds = %for.cond145
  %indvars.iv.next164 = add nsw i64 %indvars.iv163, -1
  br label %for.cond24, !llvm.loop !24

for.inc173:                                       ; preds = %for.cond24
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1
  br label %for.cond19, !llvm.loop !25

for.cond176:                                      ; preds = %for.cond19, %for.body178
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %for.body178 ], [ 0, %for.cond19 ]
  %exitcond175.not = icmp eq i64 %indvars.iv171, %wide.trip.count109
  br i1 %exitcond175.not, label %for.end185, label %for.body178

for.body178:                                      ; preds = %for.cond176
  %arrayidx180 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv171
  %25 = load i32, ptr %arrayidx180, align 4, !tbaa !5
  %call181 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %25)
  %vtable.i = load ptr, ptr %call181, align 8, !tbaa !26
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call181, i64 %vbase.offset.i
  %call.i95 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call181, i8 noundef signext %call.i95)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1
  br label %for.cond176, !llvm.loop !28

for.end185:                                       ; preds = %for.cond176
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nq) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

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
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
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
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = !{!27, !27, i64 0}
!27 = !{!"vtable pointer", !8, i64 0}
!28 = distinct !{!28, !10, !11}
