; ModuleID = '<stdin>'
source_filename = "/tmp/tmpbkgkww6_.cpp"
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc143, %entry
  %k.0 = phi i32 [ 1, %entry ], [ %inc144, %for.inc143 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %k.0, %0
  br i1 %cmp.not, label %for.end145, label %for.body

for.body:                                         ; preds = %for.cond
  %add = add nsw i32 %0, 1
  %1 = zext i32 %add to i64
  %2 = call ptr @llvm.stacksave.p0()
  %3 = mul nuw i64 %1, %1
  %vla = alloca i32, i64 %3, align 16
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc11, %for.body
  %4 = phi i32 [ %7, %for.inc11 ], [ %.pre, %for.body ]
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %for.inc11 ], [ 0, %for.body ]
  %5 = sext i32 %4 to i64
  %cmp3 = icmp slt i64 %indvars.iv63, %5
  br i1 %cmp3, label %for.cond5.preheader, label %for.end13

for.cond5.preheader:                              ; preds = %for.cond2
  %6 = mul nuw nsw i64 %indvars.iv63, %1
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %6
  br label %for.cond5

for.cond5:                                        ; preds = %for.cond5.preheader, %for.inc
  %7 = phi i32 [ %4, %for.cond5.preheader ], [ %.pre113, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next, %for.inc ]
  %8 = sext i32 %7 to i64
  %cmp6 = icmp slt i64 %indvars.iv, %8
  br i1 %cmp6, label %for.inc, label %for.inc11

for.inc:                                          ; preds = %for.cond5
  %arrayidx9 = getelementptr inbounds nuw i32, ptr %arrayidx, i64 %indvars.iv
  %call10 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx9)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre113 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !9

for.inc11:                                        ; preds = %for.cond5
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  br label %for.cond2, !llvm.loop !12

for.end13:                                        ; preds = %for.cond2
  %9 = load i32, ptr %vla, align 4, !tbaa !5
  %10 = mul nsw i64 %5, %1
  %arrayidx17 = getelementptr inbounds i32, ptr %vla, i64 %10
  %arrayidx19 = getelementptr inbounds i32, ptr %arrayidx17, i64 %5
  store i32 %9, ptr %arrayidx19, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %4, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc30, %for.end13
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %for.inc30 ], [ 1, %for.end13 ]
  %exitcond.not = icmp eq i64 %indvars.iv66, %wide.trip.count
  br i1 %exitcond.not, label %for.cond33, label %for.inc30

for.inc30:                                        ; preds = %for.cond20
  %11 = mul nuw nsw i64 %indvars.iv66, %1
  %arrayidx24 = getelementptr inbounds nuw i32, ptr %vla, i64 %11
  %12 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %arrayidx29 = getelementptr inbounds i32, ptr %arrayidx24, i64 %5
  store i32 %12, ptr %arrayidx29, align 4, !tbaa !5
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  br label %for.cond20, !llvm.loop !13

for.cond33:                                       ; preds = %for.cond20, %for.inc43
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.inc43 ], [ 1, %for.cond20 ]
  %exitcond74.not = icmp eq i64 %indvars.iv70, %wide.trip.count
  br i1 %exitcond74.not, label %for.cond46.preheader, label %for.inc43

for.cond46.preheader:                             ; preds = %for.cond33
  %13 = add i32 %4, 1
  %wide.trip.count92 = zext i32 %13 to i64
  %wide.trip.count81 = zext i32 %4 to i64
  br label %for.cond46

for.inc43:                                        ; preds = %for.cond33
  %arrayidx38 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv70
  %14 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %arrayidx42 = getelementptr inbounds nuw i32, ptr %arrayidx17, i64 %indvars.iv70
  store i32 %14, ptr %arrayidx42, align 4, !tbaa !5
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %for.cond33, !llvm.loop !14

for.cond46:                                       ; preds = %for.cond46.preheader, %for.inc138
  %indvars.iv75 = phi i64 [ 1, %for.cond46.preheader ], [ %indvars.iv.next76, %for.inc138 ]
  %sum.0 = phi i32 [ 0, %for.cond46.preheader ], [ %add137, %for.inc138 ]
  %exitcond112.not = icmp eq i64 %indvars.iv75, %wide.trip.count
  br i1 %exitcond112.not, label %for.inc143, label %for.cond50

for.cond50:                                       ; preds = %for.cond46, %for.inc87
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %for.inc87 ], [ %indvars.iv75, %for.cond46 ]
  %exitcond93 = icmp eq i64 %indvars.iv89, %wide.trip.count92
  br i1 %exitcond93, label %for.cond90.preheader, label %for.body52

for.cond90.preheader:                             ; preds = %for.cond50
  %15 = mul nuw nsw i64 %indvars.iv75, %1
  %arrayidx94 = getelementptr inbounds nuw i32, ptr %vla, i64 %15
  br label %for.cond90

for.body52:                                       ; preds = %for.cond50
  %16 = mul nuw nsw i64 %indvars.iv89, %1
  %arrayidx54 = getelementptr inbounds nuw i32, ptr %vla, i64 %16
  %arrayidx56 = getelementptr inbounds nuw i32, ptr %arrayidx54, i64 %indvars.iv75
  %17 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  br label %for.cond58

for.cond58:                                       ; preds = %for.body60, %for.body52
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %for.body60 ], [ %indvars.iv75, %for.body52 ]
  %m.0 = phi i32 [ %spec.select, %for.body60 ], [ %17, %for.body52 ]
  %exitcond82.not = icmp eq i64 %indvars.iv77, %wide.trip.count81
  br i1 %exitcond82.not, label %for.cond73.preheader, label %for.body60

for.cond73.preheader:                             ; preds = %for.cond58
  br label %for.cond73

for.body60:                                       ; preds = %for.cond58
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  %arrayidx64 = getelementptr inbounds nuw i32, ptr %arrayidx54, i64 %indvars.iv.next78
  %18 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %m.0, i32 %18)
  br label %for.cond58, !llvm.loop !15

for.cond73:                                       ; preds = %for.cond73.preheader, %for.inc84
  %indvars.iv83 = phi i64 [ %indvars.iv75, %for.cond73.preheader ], [ %indvars.iv.next84, %for.inc84 ]
  %exitcond88 = icmp eq i64 %indvars.iv83, %wide.trip.count92
  br i1 %exitcond88, label %for.inc87, label %for.inc84

for.inc84:                                        ; preds = %for.cond73
  %arrayidx79 = getelementptr inbounds nuw i32, ptr %arrayidx54, i64 %indvars.iv83
  %19 = load i32, ptr %arrayidx79, align 4, !tbaa !5
  %sub = sub nsw i32 %19, %m.0
  store i32 %sub, ptr %arrayidx79, align 4, !tbaa !5
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  br label %for.cond73, !llvm.loop !16

for.inc87:                                        ; preds = %for.cond73
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  br label %for.cond50, !llvm.loop !17

for.cond90:                                       ; preds = %for.cond90.preheader, %for.inc130
  %indvars.iv105 = phi i64 [ %indvars.iv75, %for.cond90.preheader ], [ %indvars.iv.next106, %for.inc130 ]
  %exitcond109 = icmp eq i64 %indvars.iv105, %wide.trip.count92
  br i1 %exitcond109, label %for.inc138, label %for.body92

for.body92:                                       ; preds = %for.cond90
  %arrayidx96 = getelementptr inbounds nuw i32, ptr %arrayidx94, i64 %indvars.iv105
  %20 = load i32, ptr %arrayidx96, align 4, !tbaa !5
  %invariant.gep = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv105
  br label %for.cond98

for.cond98:                                       ; preds = %for.body100, %for.body92
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %for.body100 ], [ %indvars.iv75, %for.body92 ]
  %m.2 = phi i32 [ %spec.select59, %for.body100 ], [ %20, %for.body92 ]
  %exitcond99.not = icmp eq i64 %indvars.iv94, %wide.trip.count81
  br i1 %exitcond99.not, label %for.cond115.preheader, label %for.body100

for.cond115.preheader:                            ; preds = %for.cond98
  br label %for.cond115

for.body100:                                      ; preds = %for.cond98
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  %21 = mul nuw nsw i64 %indvars.iv.next95, %1
  %gep = getelementptr inbounds nuw i32, ptr %invariant.gep, i64 %21
  %22 = load i32, ptr %gep, align 4, !tbaa !5
  %spec.select59 = call i32 @llvm.smin.i32(i32 %m.2, i32 %22)
  br label %for.cond98, !llvm.loop !18

for.cond115:                                      ; preds = %for.cond115.preheader, %for.inc127
  %indvars.iv100 = phi i64 [ %indvars.iv75, %for.cond115.preheader ], [ %indvars.iv.next101, %for.inc127 ]
  %exitcond104 = icmp eq i64 %indvars.iv100, %wide.trip.count92
  br i1 %exitcond104, label %for.inc130, label %for.inc127

for.inc127:                                       ; preds = %for.cond115
  %23 = mul nuw nsw i64 %indvars.iv100, %1
  %gep61 = getelementptr inbounds nuw i32, ptr %invariant.gep, i64 %23
  %24 = load i32, ptr %gep61, align 4, !tbaa !5
  %sub122 = sub nsw i32 %24, %m.2
  store i32 %sub122, ptr %gep61, align 4, !tbaa !5
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  br label %for.cond115, !llvm.loop !19

for.inc130:                                       ; preds = %for.cond115
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  br label %for.cond90, !llvm.loop !20

for.inc138:                                       ; preds = %for.cond90
  %arrayidx136 = getelementptr inbounds nuw i32, ptr %arrayidx94, i64 %indvars.iv75
  %25 = load i32, ptr %arrayidx136, align 4, !tbaa !5
  %add137 = add nsw i32 %25, %sum.0
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  br label %for.cond46, !llvm.loop !21

for.inc143:                                       ; preds = %for.cond46
  %call141 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %call142 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call141, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.stackrestore.p0(ptr %2)
  %inc144 = add nuw nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !22

for.end145:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

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
