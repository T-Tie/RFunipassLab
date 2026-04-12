; ModuleID = '<stdin>'
source_filename = "/tmp/tmpu09qo3hl.cpp"
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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  store i32 0, ptr %n, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc138, %entry
  %r.0 = phi i32 [ 1, %entry ], [ %inc139, %for.inc138 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %r.0, %0
  br i1 %cmp.not, label %for.end140, label %for.body

for.body:                                         ; preds = %for.cond
  %add = add nuw i32 %0, 1
  %1 = zext i32 %add to i64
  %2 = call ptr @llvm.stacksave.p0()
  %3 = mul nuw i64 %1, %1
  %vla = alloca i32, i64 %3, align 16
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc11, %for.body
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.inc11 ], [ 1, %for.body ]
  %exitcond11 = icmp eq i64 %indvars.iv7, %1
  br i1 %exitcond11, label %for.cond14.preheader, label %for.cond5.preheader

for.cond14.preheader:                             ; preds = %for.cond2
  %4 = add i32 %0, 2
  %wide.trip.count50 = zext i32 %4 to i64
  br label %for.cond14

for.cond5.preheader:                              ; preds = %for.cond2
  %5 = mul nuw nsw i64 %indvars.iv7, %1
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %5
  br label %for.cond5

for.cond5:                                        ; preds = %for.cond5.preheader, %for.inc
  %indvars.iv = phi i64 [ 1, %for.cond5.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond = icmp eq i64 %indvars.iv, %1
  br i1 %exitcond, label %for.inc11, label %for.inc

for.inc:                                          ; preds = %for.cond5
  %arrayidx9 = getelementptr inbounds nuw i32, ptr %arrayidx, i64 %indvars.iv
  %call10 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx9)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond5, !llvm.loop !9

for.inc11:                                        ; preds = %for.cond5
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %for.cond2, !llvm.loop !12

for.cond14.loopexit:                              ; preds = %for.cond109
  %add97 = add nsw i32 %17, %number.0
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  br label %for.cond14, !llvm.loop !13

for.cond14:                                       ; preds = %for.cond14.preheader, %for.cond14.loopexit
  %indvars.iv44 = phi i64 [ 3, %for.cond14.preheader ], [ %indvars.iv.next45, %for.cond14.loopexit ]
  %indvars.iv12 = phi i64 [ 1, %for.cond14.preheader ], [ %indvars.iv.next13, %for.cond14.loopexit ]
  %number.0 = phi i32 [ 0, %for.cond14.preheader ], [ %add97, %for.cond14.loopexit ]
  %exitcond51.not = icmp eq i64 %indvars.iv44, %wide.trip.count50
  br i1 %exitcond51.not, label %for.inc138, label %for.cond17

for.cond17:                                       ; preds = %for.cond14, %for.inc50
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.inc50 ], [ %indvars.iv12, %for.cond14 ]
  %exitcond28 = icmp eq i64 %indvars.iv24, %1
  br i1 %exitcond28, label %for.cond53.preheader, label %for.body19

for.cond53.preheader:                             ; preds = %for.cond17
  %6 = mul nuw nsw i64 %indvars.iv12, %1
  %arrayidx57 = getelementptr inbounds nuw i32, ptr %vla, i64 %6
  br label %for.cond53

for.body19:                                       ; preds = %for.cond17
  %7 = mul nuw nsw i64 %indvars.iv24, %1
  %arrayidx21 = getelementptr inbounds nuw i32, ptr %vla, i64 %7
  %arrayidx23 = getelementptr inbounds nuw i32, ptr %arrayidx21, i64 %indvars.iv12
  %8 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  br label %for.cond24

for.cond24:                                       ; preds = %for.body26, %for.body19
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %for.body26 ], [ %indvars.iv12, %for.body19 ]
  %min.0 = phi i32 [ %spec.select, %for.body26 ], [ %8, %for.body19 ]
  %exitcond18 = icmp eq i64 %indvars.iv14, %1
  br i1 %exitcond18, label %for.cond39.preheader, label %for.body26

for.cond39.preheader:                             ; preds = %for.cond24
  br label %for.cond39

for.body26:                                       ; preds = %for.cond24
  %arrayidx30 = getelementptr inbounds nuw i32, ptr %arrayidx21, i64 %indvars.iv14
  %9 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %9, i32 %min.0)
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %for.cond24, !llvm.loop !14

for.cond39:                                       ; preds = %for.cond39.preheader, %for.inc47
  %indvars.iv19 = phi i64 [ %indvars.iv12, %for.cond39.preheader ], [ %indvars.iv.next20, %for.inc47 ]
  %exitcond23 = icmp eq i64 %indvars.iv19, %1
  br i1 %exitcond23, label %for.inc50, label %for.inc47

for.inc47:                                        ; preds = %for.cond39
  %arrayidx45 = getelementptr inbounds nuw i32, ptr %arrayidx21, i64 %indvars.iv19
  %10 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %sub46 = sub nsw i32 %10, %min.0
  store i32 %sub46, ptr %arrayidx45, align 4, !tbaa !5
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond39, !llvm.loop !15

for.inc50:                                        ; preds = %for.cond39
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  br label %for.cond17, !llvm.loop !16

for.cond53:                                       ; preds = %for.cond53.preheader, %for.inc88
  %indvars.iv39 = phi i64 [ %indvars.iv12, %for.cond53.preheader ], [ %indvars.iv.next40, %for.inc88 ]
  %exitcond43 = icmp eq i64 %indvars.iv39, %1
  br i1 %exitcond43, label %for.end90, label %for.body55

for.body55:                                       ; preds = %for.cond53
  %arrayidx59 = getelementptr inbounds nuw i32, ptr %arrayidx57, i64 %indvars.iv39
  %11 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  %invariant.gep = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv39
  br label %for.cond60

for.cond60:                                       ; preds = %for.body62, %for.body55
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.body62 ], [ %indvars.iv12, %for.body55 ]
  %min.2 = phi i32 [ %spec.select3, %for.body62 ], [ %11, %for.body55 ]
  %exitcond33 = icmp eq i64 %indvars.iv29, %1
  br i1 %exitcond33, label %for.cond77.preheader, label %for.body62

for.cond77.preheader:                             ; preds = %for.cond60
  br label %for.cond77

for.body62:                                       ; preds = %for.cond60
  %12 = mul nuw nsw i64 %indvars.iv29, %1
  %gep = getelementptr inbounds nuw i32, ptr %invariant.gep, i64 %12
  %13 = load i32, ptr %gep, align 4, !tbaa !5
  %spec.select3 = call i32 @llvm.smin.i32(i32 %13, i32 %min.2)
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond60, !llvm.loop !17

for.cond77:                                       ; preds = %for.cond77.preheader, %for.inc85
  %indvars.iv34 = phi i64 [ %indvars.iv12, %for.cond77.preheader ], [ %indvars.iv.next35, %for.inc85 ]
  %exitcond38 = icmp eq i64 %indvars.iv34, %1
  br i1 %exitcond38, label %for.inc88, label %for.inc85

for.inc85:                                        ; preds = %for.cond77
  %14 = mul nuw nsw i64 %indvars.iv34, %1
  %gep5 = getelementptr inbounds nuw i32, ptr %invariant.gep, i64 %14
  %15 = load i32, ptr %gep5, align 4, !tbaa !5
  %sub84 = sub nsw i32 %15, %min.2
  store i32 %sub84, ptr %gep5, align 4, !tbaa !5
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %for.cond77, !llvm.loop !18

for.inc88:                                        ; preds = %for.cond77
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond53, !llvm.loop !19

for.end90:                                        ; preds = %for.cond53
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %16 = mul nuw nsw i64 %indvars.iv.next13, %1
  %arrayidx93 = getelementptr inbounds nuw i32, ptr %vla, i64 %16
  %arrayidx96 = getelementptr inbounds nuw i32, ptr %arrayidx93, i64 %indvars.iv.next13
  %17 = load i32, ptr %arrayidx96, align 4, !tbaa !5
  %arrayidx101 = getelementptr inbounds nuw i32, ptr %arrayidx57, i64 %indvars.iv12
  %18 = load i32, ptr %arrayidx101, align 4, !tbaa !5
  store i32 %18, ptr %arrayidx96, align 4, !tbaa !5
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc130, %for.end90
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.inc130 ], [ %indvars.iv44, %for.end90 ]
  %19 = trunc nuw i64 %indvars.iv46 to i32
  %cmp110.not = icmp slt i32 %0, %19
  br i1 %cmp110.not, label %for.cond14.loopexit, label %for.inc130

for.inc130:                                       ; preds = %for.cond109
  %arrayidx115 = getelementptr inbounds nuw i32, ptr %arrayidx57, i64 %indvars.iv46
  %20 = load i32, ptr %arrayidx115, align 4, !tbaa !5
  %arrayidx120 = getelementptr inbounds nuw i32, ptr %arrayidx93, i64 %indvars.iv46
  store i32 %20, ptr %arrayidx120, align 4, !tbaa !5
  %21 = mul nuw nsw i64 %indvars.iv46, %1
  %arrayidx122 = getelementptr inbounds nuw i32, ptr %vla, i64 %21
  %arrayidx124 = getelementptr inbounds nuw i32, ptr %arrayidx122, i64 %indvars.iv12
  %22 = load i32, ptr %arrayidx124, align 4, !tbaa !5
  %arrayidx129 = getelementptr inbounds nuw i32, ptr %arrayidx122, i64 %indvars.iv.next13
  store i32 %22, ptr %arrayidx129, align 4, !tbaa !5
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %for.cond109, !llvm.loop !20

for.inc138:                                       ; preds = %for.cond14
  %call136 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %number.0)
  %call137 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call136, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.stackrestore.p0(ptr %2)
  %inc139 = add nuw nsw i32 %r.0, 1
  br label %for.cond, !llvm.loop !21

for.end140:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
