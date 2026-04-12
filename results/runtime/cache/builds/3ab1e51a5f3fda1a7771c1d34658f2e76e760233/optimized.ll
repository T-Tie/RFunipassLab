; ModuleID = '<stdin>'
source_filename = "/tmp/tmpdkcq8w4s.cpp"
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %3 = mul nuw i64 %1, %1
  %4 = mul nuw i64 %3, %1
  %vla = alloca i32, i64 %4, align 16
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %6 = zext i32 %5 to i64
  %vla1 = alloca i32, i64 %6, align 16
  %7 = shl nuw nsw i64 %6, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %vla1, i8 0, i64 %7, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %8 = phi i32 [ %11, %for.inc18 ], [ %5, %entry ]
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %for.inc18 ], [ 0, %entry ]
  %9 = sext i32 %8 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv92, %9
  br i1 %cmp.not.not, label %for.cond2.preheader, label %for.cond21.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %10 = mul nsw i64 %indvars.iv92, %3
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %10
  br label %for.cond2

for.cond21.preheader:                             ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %8, i32 0)
  %wide.trip.count151 = zext nneg i32 %smax to i64
  %wide.trip.count145 = zext i32 %8 to i64
  br label %for.cond21

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc15
  %11 = phi i32 [ %8, %for.cond2.preheader ], [ %14, %for.inc15 ]
  %indvars.iv89 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next90, %for.inc15 ]
  %12 = sext i32 %11 to i64
  %cmp4.not.not = icmp slt i64 %indvars.iv89, %12
  br i1 %cmp4.not.not, label %for.cond6.preheader, label %for.inc18

for.cond6.preheader:                              ; preds = %for.cond2
  %13 = mul nuw nsw i64 %indvars.iv89, %1
  %arrayidx11 = getelementptr inbounds nuw i32, ptr %arrayidx, i64 %13
  br label %for.cond6

for.cond6:                                        ; preds = %for.cond6.preheader, %for.inc
  %14 = phi i32 [ %11, %for.cond6.preheader ], [ %.pre, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.cond6.preheader ], [ %indvars.iv.next, %for.inc ]
  %15 = sext i32 %14 to i64
  %cmp8.not.not = icmp slt i64 %indvars.iv, %15
  br i1 %cmp8.not.not, label %for.inc, label %for.inc15

for.inc:                                          ; preds = %for.cond6
  %arrayidx13 = getelementptr inbounds nuw i32, ptr %arrayidx11, i64 %indvars.iv
  %call14 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx13)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !9

for.inc15:                                        ; preds = %for.cond6
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  br label %for.cond2, !llvm.loop !12

for.inc18:                                        ; preds = %for.cond2
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  br label %for.cond, !llvm.loop !13

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc206
  %indvars.iv147 = phi i64 [ 0, %for.cond21.preheader ], [ %indvars.iv.next148, %for.inc206 ]
  %exitcond152.not = icmp eq i64 %indvars.iv147, %wide.trip.count151
  br i1 %exitcond152.not, label %for.end208, label %for.cond25.preheader

for.cond25.preheader:                             ; preds = %for.cond21
  %16 = mul nsw i64 %indvars.iv147, %3
  %arrayidx34 = getelementptr inbounds i32, ptr %vla, i64 %16
  %arrayidx168 = getelementptr inbounds nuw i32, ptr %vla1, i64 %indvars.iv147
  br label %for.cond25

for.cond25:                                       ; preds = %for.cond25.preheader, %for.inc203
  %indvars.iv141 = phi i64 [ 1, %for.cond25.preheader ], [ %indvars.iv.next142, %for.inc203 ]
  %exitcond146.not = icmp eq i64 %indvars.iv141, %wide.trip.count145
  br i1 %exitcond146.not, label %for.inc206, label %for.cond29

for.cond29:                                       ; preds = %for.cond25, %for.inc93
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %for.inc93 ], [ 0, %for.cond25 ]
  %exitcond110.not = icmp eq i64 %indvars.iv105, %wide.trip.count145
  br i1 %exitcond110.not, label %for.cond96, label %for.body32

for.body32:                                       ; preds = %for.cond29
  %17 = mul nuw nsw i64 %indvars.iv105, %1
  %arrayidx36 = getelementptr inbounds nuw i32, ptr %arrayidx34, i64 %17
  %18 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %18, 0
  br i1 %cmp38, label %for.inc93, label %for.cond44

for.cond44:                                       ; preds = %for.body32, %for.body47
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %for.body47 ], [ 0, %for.body32 ]
  %iTemp.0 = phi i32 [ %iTemp.1, %for.body47 ], [ %18, %for.body32 ]
  %exitcond.not = icmp eq i64 %indvars.iv95, %wide.trip.count145
  br i1 %exitcond.not, label %for.cond73.preheader, label %for.body47

for.cond73.preheader:                             ; preds = %for.cond44
  br label %for.cond73

for.body47:                                       ; preds = %for.cond44
  %arrayidx53 = getelementptr inbounds nuw i32, ptr %arrayidx36, i64 %indvars.iv95
  %19 = load i32, ptr %arrayidx53, align 4, !tbaa !5
  %20 = call i32 @llvm.smin.i32(i32 %19, i32 %iTemp.0)
  %cmp6183 = icmp slt i32 %19, 0
  %iTemp.1 = select i1 %cmp6183, i32 %iTemp.0, i32 %20
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  br label %for.cond44, !llvm.loop !14

for.cond73:                                       ; preds = %for.cond73.preheader, %for.inc90
  %indvars.iv99 = phi i64 [ 0, %for.cond73.preheader ], [ %indvars.iv.next100, %for.inc90 ]
  %exitcond104.not = icmp eq i64 %indvars.iv99, %wide.trip.count145
  br i1 %exitcond104.not, label %for.inc93, label %for.inc90

for.inc90:                                        ; preds = %for.cond73
  %arrayidx82 = getelementptr inbounds nuw i32, ptr %arrayidx36, i64 %indvars.iv99
  %21 = load i32, ptr %arrayidx82, align 4, !tbaa !5
  %sub83 = sub nsw i32 %21, %iTemp.0
  store i32 %sub83, ptr %arrayidx82, align 4, !tbaa !5
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1
  br label %for.cond73, !llvm.loop !15

for.inc93:                                        ; preds = %for.cond73, %for.body32
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  br label %for.cond29, !llvm.loop !16

for.cond96:                                       ; preds = %for.cond29, %for.inc164
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %for.inc164 ], [ 0, %for.cond29 ]
  %exitcond128.not = icmp eq i64 %indvars.iv123, %wide.trip.count145
  br i1 %exitcond128.not, label %for.end166, label %for.body99

for.body99:                                       ; preds = %for.cond96
  %arrayidx104 = getelementptr inbounds nuw i32, ptr %arrayidx34, i64 %indvars.iv123
  %22 = load i32, ptr %arrayidx104, align 4, !tbaa !5
  %cmp105 = icmp slt i32 %22, 0
  br i1 %cmp105, label %for.inc164, label %for.cond114

for.cond114:                                      ; preds = %for.body99, %for.body117
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %for.body117 ], [ 0, %for.body99 ]
  %iTemp.2 = phi i32 [ %iTemp.3, %for.body117 ], [ %22, %for.body99 ]
  %exitcond116.not = icmp eq i64 %indvars.iv111, %wide.trip.count145
  br i1 %exitcond116.not, label %for.cond144.preheader, label %for.body117

for.cond144.preheader:                            ; preds = %for.cond114
  br label %for.cond144

for.body117:                                      ; preds = %for.cond114
  %23 = mul nuw nsw i64 %indvars.iv111, %1
  %gep = getelementptr inbounds nuw i32, ptr %arrayidx104, i64 %23
  %24 = load i32, ptr %gep, align 4, !tbaa !5
  %25 = call i32 @llvm.smin.i32(i32 %24, i32 %iTemp.2)
  %cmp13282 = icmp slt i32 %24, 0
  %iTemp.3 = select i1 %cmp13282, i32 %iTemp.2, i32 %25
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1
  br label %for.cond114, !llvm.loop !17

for.cond144:                                      ; preds = %for.cond144.preheader, %for.inc161
  %indvars.iv117 = phi i64 [ 0, %for.cond144.preheader ], [ %indvars.iv.next118, %for.inc161 ]
  %exitcond122.not = icmp eq i64 %indvars.iv117, %wide.trip.count145
  br i1 %exitcond122.not, label %for.inc164, label %for.inc161

for.inc161:                                       ; preds = %for.cond144
  %26 = mul nuw nsw i64 %indvars.iv117, %1
  %gep85 = getelementptr inbounds nuw i32, ptr %arrayidx104, i64 %26
  %27 = load i32, ptr %gep85, align 4, !tbaa !5
  %sub154 = sub nsw i32 %27, %iTemp.2
  store i32 %sub154, ptr %gep85, align 4, !tbaa !5
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1
  br label %for.cond144, !llvm.loop !18

for.inc164:                                       ; preds = %for.cond144, %for.body99
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1
  br label %for.cond96, !llvm.loop !19

for.end166:                                       ; preds = %for.cond96
  %28 = load i32, ptr %arrayidx168, align 4, !tbaa !5
  %29 = mul nuw nsw i64 %indvars.iv141, %1
  %arrayidx172 = getelementptr inbounds nuw i32, ptr %arrayidx34, i64 %29
  %arrayidx174 = getelementptr inbounds nuw i32, ptr %arrayidx172, i64 %indvars.iv141
  %30 = load i32, ptr %arrayidx174, align 4, !tbaa !5
  %add = add nsw i32 %30, %28
  store i32 %add, ptr %arrayidx168, align 4, !tbaa !5
  br label %for.cond177

for.cond177:                                      ; preds = %for.inc187, %for.end166
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %for.inc187 ], [ 0, %for.end166 ]
  %exitcond134.not = icmp eq i64 %indvars.iv129, %wide.trip.count145
  br i1 %exitcond134.not, label %for.cond190.preheader, label %for.inc187

for.cond190.preheader:                            ; preds = %for.cond177
  %invariant.gep86 = getelementptr inbounds nuw i32, ptr %arrayidx34, i64 %indvars.iv141
  br label %for.cond190

for.inc187:                                       ; preds = %for.cond177
  %arrayidx186 = getelementptr inbounds nuw i32, ptr %arrayidx172, i64 %indvars.iv129
  store i32 -1, ptr %arrayidx186, align 4, !tbaa !5
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1
  br label %for.cond177, !llvm.loop !20

for.cond190:                                      ; preds = %for.cond190.preheader, %for.inc200
  %indvars.iv135 = phi i64 [ 0, %for.cond190.preheader ], [ %indvars.iv.next136, %for.inc200 ]
  %exitcond140.not = icmp eq i64 %indvars.iv135, %wide.trip.count145
  br i1 %exitcond140.not, label %for.inc203, label %for.inc200

for.inc200:                                       ; preds = %for.cond190
  %31 = mul nuw nsw i64 %indvars.iv135, %1
  %gep87 = getelementptr inbounds nuw i32, ptr %invariant.gep86, i64 %31
  store i32 -1, ptr %gep87, align 4, !tbaa !5
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1
  br label %for.cond190, !llvm.loop !21

for.inc203:                                       ; preds = %for.cond190
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1
  br label %for.cond25, !llvm.loop !22

for.inc206:                                       ; preds = %for.cond25
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1
  br label %for.cond21, !llvm.loop !23

for.end208:                                       ; preds = %for.cond21
  %32 = load i32, ptr %vla1, align 16, !tbaa !5
  %call210 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %32)
  br label %for.cond211

for.cond211:                                      ; preds = %for.inc219, %for.end208
  %indvars.iv153 = phi i64 [ %indvars.iv.next154, %for.inc219 ], [ 1, %for.end208 ]
  %33 = load i32, ptr %n, align 4, !tbaa !5
  %34 = sext i32 %33 to i64
  %cmp213.not.not = icmp slt i64 %indvars.iv153, %34
  br i1 %cmp213.not.not, label %for.inc219, label %for.end221

for.inc219:                                       ; preds = %for.cond211
  %call215 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %arrayidx217 = getelementptr inbounds nuw i32, ptr %vla1, i64 %indvars.iv153
  %35 = load i32, ptr %arrayidx217, align 4, !tbaa !5
  %call218 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call215, i32 noundef %35)
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1
  br label %for.cond211, !llvm.loop !24

for.end221:                                       ; preds = %for.cond211
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
