; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9wrtt962.cpp"
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
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %add.ptr117 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond

for.cond:                                         ; preds = %for.end177, %entry
  %min.0 = phi i32 [ undef, %entry ], [ %min.1, %for.end177 ]
  %p.0 = phi i32 [ 0, %entry ], [ %inc181, %for.end177 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %p.0, %0
  br i1 %cmp, label %for.cond1, label %for.end182

for.cond1:                                        ; preds = %for.cond, %for.inc11
  %1 = phi i32 [ %5, %for.inc11 ], [ %0, %for.cond ]
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %for.inc11 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv97, %2
  br i1 %cmp2, label %for.cond4.preheader, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.cond1
  %3 = add i32 %1, -1
  %4 = zext i32 %3 to i64
  br label %for.cond14

for.cond4.preheader:                              ; preds = %for.cond1
  %add.ptr = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv97
  br label %for.cond4

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %5 = phi i32 [ %1, %for.cond4.preheader ], [ %.pre, %for.body6 ]
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.body6 ]
  %6 = sext i32 %5 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %6
  br i1 %cmp5, label %for.body6, label %for.inc11

for.body6:                                        ; preds = %for.cond4
  %add.ptr9 = getelementptr inbounds nuw i32, ptr %add.ptr, i64 %indvars.iv
  %call10 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %add.ptr9)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc11:                                        ; preds = %for.cond4
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  br label %for.cond1, !llvm.loop !12

for.cond14.loopexit:                              ; preds = %for.cond150
  %add = add nsw i32 %13, %sum.0
  %sub119 = add nsw i32 %k.0, -1
  %indvars.iv.next152 = add nsw i64 %indvars.iv151, -1
  br label %for.cond14, !llvm.loop !13

for.cond14:                                       ; preds = %for.cond14.preheader, %for.cond14.loopexit
  %indvars.iv151 = phi i64 [ %4, %for.cond14.preheader ], [ %indvars.iv.next152, %for.cond14.loopexit ]
  %min.1 = phi i32 [ %min.0, %for.cond14.preheader ], [ %min.5, %for.cond14.loopexit ]
  %k.0 = phi i32 [ %1, %for.cond14.preheader ], [ %sub119, %for.cond14.loopexit ]
  %sum.0 = phi i32 [ 0, %for.cond14.preheader ], [ %add, %for.cond14.loopexit ]
  %cmp15 = icmp sgt i32 %k.0, 1
  br i1 %cmp15, label %for.cond17.preheader, label %for.end177

for.cond17.preheader:                             ; preds = %for.cond14
  %wide.trip.count111 = zext nneg i32 %k.0 to i64
  br label %for.cond17

for.cond17:                                       ; preds = %for.cond17.preheader, %for.inc61
  %indvars.iv108 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next109, %for.inc61 ]
  %min.2 = phi i32 [ %min.1, %for.cond17.preheader ], [ %min.3, %for.inc61 ]
  %exitcond112.not = icmp eq i64 %indvars.iv108, %wide.trip.count111
  br i1 %exitcond112.not, label %for.cond64, label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.cond17
  %add.ptr30 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv108
  br label %for.cond20

for.cond20:                                       ; preds = %for.cond20.preheader, %for.inc42
  %indvars.iv100 = phi i64 [ 0, %for.cond20.preheader ], [ %indvars.iv.next101, %for.inc42 ]
  %min.3 = phi i32 [ %min.2, %for.cond20.preheader ], [ %min.4, %for.inc42 ]
  %exitcond.not = icmp eq i64 %indvars.iv100, %wide.trip.count111
  br i1 %exitcond.not, label %for.cond45, label %for.body22

for.body22:                                       ; preds = %for.cond20
  %cmp23 = icmp eq i64 %indvars.iv100, 0
  br i1 %cmp23, label %if.then, label %if.else

if.then:                                          ; preds = %for.body22
  %7 = load i32, ptr %add.ptr30, align 16, !tbaa !5
  br label %for.inc42

if.else:                                          ; preds = %for.body22
  %add.ptr33 = getelementptr inbounds nuw i32, ptr %add.ptr30, i64 %indvars.iv100
  %8 = load i32, ptr %add.ptr33, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %8, i32 %min.3)
  br label %for.inc42

for.inc42:                                        ; preds = %if.else, %if.then
  %min.4 = phi i32 [ %7, %if.then ], [ %spec.select, %if.else ]
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  br label %for.cond20, !llvm.loop !14

for.cond45:                                       ; preds = %for.cond20, %for.body47
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %for.body47 ], [ 0, %for.cond20 ]
  %exitcond107.not = icmp eq i64 %indvars.iv103, %wide.trip.count111
  br i1 %exitcond107.not, label %for.inc61, label %for.body47

for.body47:                                       ; preds = %for.cond45
  %add.ptr52 = getelementptr inbounds nuw i32, ptr %add.ptr30, i64 %indvars.iv103
  %9 = load i32, ptr %add.ptr52, align 4, !tbaa !5
  %sub = sub nsw i32 %9, %min.3
  store i32 %sub, ptr %add.ptr52, align 4, !tbaa !5
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  br label %for.cond45, !llvm.loop !15

for.inc61:                                        ; preds = %for.cond45
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1
  br label %for.cond17, !llvm.loop !16

for.cond64:                                       ; preds = %for.cond17, %for.inc112
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %for.inc112 ], [ 0, %for.cond17 ]
  %min.5 = phi i32 [ %min.6, %for.inc112 ], [ %min.2, %for.cond17 ]
  %exitcond127.not = icmp eq i64 %indvars.iv123, %wide.trip.count111
  br i1 %exitcond127.not, label %for.end114, label %for.cond67.preheader

for.cond67.preheader:                             ; preds = %for.cond64
  %invariant.gep = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv123
  br label %for.cond67

for.cond67:                                       ; preds = %for.cond67.preheader, %for.inc92
  %indvars.iv113 = phi i64 [ 0, %for.cond67.preheader ], [ %indvars.iv.next114, %for.inc92 ]
  %min.6 = phi i32 [ %min.5, %for.cond67.preheader ], [ %min.7, %for.inc92 ]
  %exitcond117.not = icmp eq i64 %indvars.iv113, %wide.trip.count111
  br i1 %exitcond117.not, label %for.cond95, label %for.body69

for.body69:                                       ; preds = %for.cond67
  %cmp70 = icmp eq i64 %indvars.iv113, 0
  br i1 %cmp70, label %if.then71, label %if.else77

if.then71:                                        ; preds = %for.body69
  %10 = load i32, ptr %invariant.gep, align 4, !tbaa !5
  br label %for.inc92

if.else77:                                        ; preds = %for.body69
  %gep = getelementptr inbounds nuw [100 x i32], ptr %invariant.gep, i64 %indvars.iv113
  %11 = load i32, ptr %gep, align 4, !tbaa !5
  %spec.select90 = call i32 @llvm.smin.i32(i32 %11, i32 %min.6)
  br label %for.inc92

for.inc92:                                        ; preds = %if.else77, %if.then71
  %min.7 = phi i32 [ %10, %if.then71 ], [ %spec.select90, %if.else77 ]
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1
  br label %for.cond67, !llvm.loop !17

for.cond95:                                       ; preds = %for.cond67, %for.body97
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %for.body97 ], [ 0, %for.cond67 ]
  %exitcond122.not = icmp eq i64 %indvars.iv118, %wide.trip.count111
  br i1 %exitcond122.not, label %for.inc112, label %for.body97

for.body97:                                       ; preds = %for.cond95
  %gep93 = getelementptr inbounds nuw [100 x i32], ptr %invariant.gep, i64 %indvars.iv118
  %12 = load i32, ptr %gep93, align 4, !tbaa !5
  %sub103 = sub nsw i32 %12, %min.6
  store i32 %sub103, ptr %gep93, align 4, !tbaa !5
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1
  br label %for.cond95, !llvm.loop !18

for.inc112:                                       ; preds = %for.cond95
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1
  br label %for.cond64, !llvm.loop !19

for.end114:                                       ; preds = %for.cond64
  %13 = load i32, ptr %add.ptr117, align 4, !tbaa !5
  br label %for.cond118

for.cond118:                                      ; preds = %for.body121, %for.end114
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %for.body121 ], [ 1, %for.end114 ]
  %exitcond135.not = icmp eq i64 %indvars.iv128, %indvars.iv151
  br i1 %exitcond135.not, label %for.cond134, label %for.body121

for.body121:                                      ; preds = %for.cond118
  %add.ptr125 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv128
  %add.ptr126 = getelementptr inbounds nuw i8, ptr %add.ptr125, i64 4
  %14 = load i32, ptr %add.ptr126, align 4, !tbaa !5
  store i32 %14, ptr %add.ptr125, align 4, !tbaa !5
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1
  br label %for.cond118, !llvm.loop !20

for.cond134:                                      ; preds = %for.cond118, %for.body137
  %indvars.iv136 = phi i64 [ %indvars.iv.next137, %for.body137 ], [ 1, %for.cond118 ]
  %exitcond140.not = icmp eq i64 %indvars.iv136, %indvars.iv151
  br i1 %exitcond140.not, label %for.cond150, label %for.body137

for.body137:                                      ; preds = %for.cond134
  %add.ptr139 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv136
  %add.ptr140 = getelementptr inbounds nuw i8, ptr %add.ptr139, i64 400
  %15 = load i32, ptr %add.ptr140, align 16, !tbaa !5
  store i32 %15, ptr %add.ptr139, align 16, !tbaa !5
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1
  br label %for.cond134, !llvm.loop !21

for.cond150:                                      ; preds = %for.cond134, %for.inc173
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %for.inc173 ], [ 1, %for.cond134 ]
  %exitcond150.not = icmp eq i64 %indvars.iv146, %indvars.iv151
  br i1 %exitcond150.not, label %for.cond14.loopexit, label %for.cond154.preheader

for.cond154.preheader:                            ; preds = %for.cond150
  %add.ptr159 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv146
  %invariant.gep94 = getelementptr inbounds nuw i8, ptr %add.ptr159, i64 404
  br label %for.cond154

for.cond154:                                      ; preds = %for.cond154.preheader, %for.body157
  %indvars.iv141 = phi i64 [ 1, %for.cond154.preheader ], [ %indvars.iv.next142, %for.body157 ]
  %exitcond145.not = icmp eq i64 %indvars.iv141, %indvars.iv151
  br i1 %exitcond145.not, label %for.inc173, label %for.body157

for.body157:                                      ; preds = %for.cond154
  %gep95 = getelementptr inbounds nuw i32, ptr %invariant.gep94, i64 %indvars.iv141
  %16 = load i32, ptr %gep95, align 4, !tbaa !5
  %add.ptr169 = getelementptr inbounds nuw i32, ptr %add.ptr159, i64 %indvars.iv141
  store i32 %16, ptr %add.ptr169, align 4, !tbaa !5
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1
  br label %for.cond154, !llvm.loop !22

for.inc173:                                       ; preds = %for.cond154
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1
  br label %for.cond150, !llvm.loop !23

for.end177:                                       ; preds = %for.cond14
  %call178 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %vtable.i = load ptr, ptr %call178, align 8, !tbaa !24
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call178, i64 %vbase.offset.i
  %call.i91 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call178, i8 noundef signext %call.i91)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc181 = add nuw nsw i32 %p.0, 1
  br label %for.cond, !llvm.loop !26

for.end182:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

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
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = !{!25, !25, i64 0}
!25 = !{!"vtable pointer", !8, i64 0}
!26 = distinct !{!26, !10, !11}
