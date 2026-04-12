; ModuleID = '<stdin>'
source_filename = "/tmp/tmp3i8ebbbg.cpp"
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
  %a = alloca [105 x [105 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 44100, ptr noundef align 16 %a) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc166, %entry
  %z1.0 = phi i32 [ 0, %entry ], [ %inc167, %for.inc166 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %z1.0, %0
  br i1 %cmp, label %for.body, label %for.end168

for.body:                                         ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc12, %for.body
  %i.0 = phi i32 [ 0, %for.body ], [ %inc13, %for.inc12 ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %i.0, %1
  br i1 %cmp3, label %for.body4, label %for.end14

for.body4:                                        ; preds = %for.cond2
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %j.0 = phi i32 [ 0, %for.body4 ], [ %inc, %for.inc ]
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %j.0, %2
  br i1 %cmp6, label %for.inc, label %for.inc12

for.inc:                                          ; preds = %for.cond5
  %idx.ext = sext i32 %i.0 to i64
  %add.ptr = getelementptr inbounds [105 x i32], ptr %a, i64 %idx.ext
  %idx.ext9 = sext i32 %j.0 to i64
  %add.ptr10 = getelementptr inbounds i32, ptr %add.ptr, i64 %idx.ext9
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %add.ptr10)
  %inc = add nsw i32 %j.0, 1
  br label %for.cond5, !llvm.loop !9

for.inc12:                                        ; preds = %for.cond5
  %inc13 = add nsw i32 %i.0, 1
  br label %for.cond2, !llvm.loop !12

for.end14:                                        ; preds = %for.cond2
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc161, %for.end14
  %sum.0 = phi i32 [ 0, %for.end14 ], [ %add, %for.inc161 ]
  %k.0 = phi i32 [ 0, %for.end14 ], [ %inc162, %for.inc161 ]
  %sub = sub nsw i32 %1, 1
  %cmp16 = icmp slt i32 %k.0, %sub
  br i1 %cmp16, label %for.body17, label %for.inc166

for.body17:                                       ; preds = %for.cond15
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc56, %for.body17
  %i.1 = phi i32 [ 0, %for.body17 ], [ %inc57, %for.inc56 ]
  %sub19 = sub nsw i32 %1, %k.0
  %cmp20 = icmp slt i32 %i.1, %sub19
  br i1 %cmp20, label %for.body21, label %for.end58

for.body21:                                       ; preds = %for.cond18
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc39, %for.body21
  %min.0 = phi i32 [ 100000000, %for.body21 ], [ %min.1, %for.inc39 ]
  %j.1 = phi i32 [ 0, %for.body21 ], [ %inc40, %for.inc39 ]
  %cmp24 = icmp slt i32 %j.1, %sub19
  br i1 %cmp24, label %for.body25, label %for.end41

for.body25:                                       ; preds = %for.cond22
  %idx.ext27 = sext i32 %i.1 to i64
  %add.ptr28 = getelementptr inbounds [105 x i32], ptr %a, i64 %idx.ext27
  %idx.ext30 = sext i32 %j.1 to i64
  %add.ptr31 = getelementptr inbounds i32, ptr %add.ptr28, i64 %idx.ext30
  %3 = load i32, ptr %add.ptr31, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %3, %min.0
  br i1 %cmp32, label %if.then, label %for.inc39

if.then:                                          ; preds = %for.body25
  br label %for.inc39

for.inc39:                                        ; preds = %for.body25, %if.then
  %min.1 = phi i32 [ %3, %if.then ], [ %min.0, %for.body25 ]
  %inc40 = add nsw i32 %j.1, 1
  br label %for.cond22, !llvm.loop !13

for.end41:                                        ; preds = %for.cond22
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc53, %for.end41
  %j.2 = phi i32 [ 0, %for.end41 ], [ %inc54, %for.inc53 ]
  %cmp44 = icmp slt i32 %j.2, %sub19
  br i1 %cmp44, label %for.inc53, label %for.inc56

for.inc53:                                        ; preds = %for.cond42
  %idx.ext47 = sext i32 %i.1 to i64
  %add.ptr48 = getelementptr inbounds [105 x i32], ptr %a, i64 %idx.ext47
  %idx.ext50 = sext i32 %j.2 to i64
  %add.ptr51 = getelementptr inbounds i32, ptr %add.ptr48, i64 %idx.ext50
  %4 = load i32, ptr %add.ptr51, align 4, !tbaa !5
  %sub52 = sub nsw i32 %4, %min.0
  store i32 %sub52, ptr %add.ptr51, align 4, !tbaa !5
  %inc54 = add nsw i32 %j.2, 1
  br label %for.cond42, !llvm.loop !14

for.inc56:                                        ; preds = %for.cond42
  %inc57 = add nsw i32 %i.1, 1
  br label %for.cond18, !llvm.loop !15

for.end58:                                        ; preds = %for.cond18
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc99, %for.end58
  %i.2 = phi i32 [ 0, %for.end58 ], [ %inc100, %for.inc99 ]
  %cmp61 = icmp slt i32 %i.2, %sub19
  br i1 %cmp61, label %for.body62, label %for.end101

for.body62:                                       ; preds = %for.cond59
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc82, %for.body62
  %min.2 = phi i32 [ 100000000, %for.body62 ], [ %min.3, %for.inc82 ]
  %j.3 = phi i32 [ 0, %for.body62 ], [ %inc83, %for.inc82 ]
  %cmp65 = icmp slt i32 %j.3, %sub19
  br i1 %cmp65, label %for.body66, label %for.end84

for.body66:                                       ; preds = %for.cond63
  %idx.ext68 = sext i32 %j.3 to i64
  %add.ptr69 = getelementptr inbounds [105 x i32], ptr %a, i64 %idx.ext68
  %idx.ext71 = sext i32 %i.2 to i64
  %add.ptr72 = getelementptr inbounds i32, ptr %add.ptr69, i64 %idx.ext71
  %5 = load i32, ptr %add.ptr72, align 4, !tbaa !5
  %cmp73 = icmp slt i32 %5, %min.2
  br i1 %cmp73, label %if.then74, label %for.inc82

if.then74:                                        ; preds = %for.body66
  br label %for.inc82

for.inc82:                                        ; preds = %for.body66, %if.then74
  %min.3 = phi i32 [ %5, %if.then74 ], [ %min.2, %for.body66 ]
  %inc83 = add nsw i32 %j.3, 1
  br label %for.cond63, !llvm.loop !16

for.end84:                                        ; preds = %for.cond63
  br label %for.cond85

for.cond85:                                       ; preds = %for.inc96, %for.end84
  %j.4 = phi i32 [ 0, %for.end84 ], [ %inc97, %for.inc96 ]
  %cmp87 = icmp slt i32 %j.4, %sub19
  br i1 %cmp87, label %for.inc96, label %for.inc99

for.inc96:                                        ; preds = %for.cond85
  %idx.ext90 = sext i32 %j.4 to i64
  %add.ptr91 = getelementptr inbounds [105 x i32], ptr %a, i64 %idx.ext90
  %idx.ext93 = sext i32 %i.2 to i64
  %add.ptr94 = getelementptr inbounds i32, ptr %add.ptr91, i64 %idx.ext93
  %6 = load i32, ptr %add.ptr94, align 4, !tbaa !5
  %sub95 = sub nsw i32 %6, %min.2
  store i32 %sub95, ptr %add.ptr94, align 4, !tbaa !5
  %inc97 = add nsw i32 %j.4, 1
  br label %for.cond85, !llvm.loop !17

for.inc99:                                        ; preds = %for.cond85
  %inc100 = add nsw i32 %i.2, 1
  br label %for.cond59, !llvm.loop !18

for.end101:                                       ; preds = %for.cond59
  %add.ptr103 = getelementptr inbounds [105 x i32], ptr %a, i64 1
  %add.ptr105 = getelementptr inbounds i32, ptr %add.ptr103, i64 1
  %7 = load i32, ptr %add.ptr105, align 8, !tbaa !5
  %add = add nsw i32 %sum.0, %7
  br label %for.cond106

for.cond106:                                      ; preds = %for.inc130, %for.end101
  %i.3 = phi i32 [ 0, %for.end101 ], [ %inc131, %for.inc130 ]
  %cmp108 = icmp slt i32 %i.3, %sub19
  br i1 %cmp108, label %for.body109, label %for.end132

for.body109:                                      ; preds = %for.cond106
  br label %for.cond110

for.cond110:                                      ; preds = %for.inc127, %for.body109
  %j.5 = phi i32 [ 2, %for.body109 ], [ %inc128, %for.inc127 ]
  %cmp112 = icmp slt i32 %j.5, %sub19
  br i1 %cmp112, label %for.inc127, label %for.inc130

for.inc127:                                       ; preds = %for.cond110
  %idx.ext115 = sext i32 %i.3 to i64
  %add.ptr116 = getelementptr inbounds [105 x i32], ptr %a, i64 %idx.ext115
  %idx.ext118 = sext i32 %j.5 to i64
  %add.ptr119 = getelementptr inbounds i32, ptr %add.ptr116, i64 %idx.ext118
  %8 = load i32, ptr %add.ptr119, align 4, !tbaa !5
  %add.ptr126 = getelementptr inbounds i32, ptr %add.ptr119, i64 -1
  store i32 %8, ptr %add.ptr126, align 4, !tbaa !5
  %inc128 = add nsw i32 %j.5, 1
  br label %for.cond110, !llvm.loop !19

for.inc130:                                       ; preds = %for.cond110
  %inc131 = add nsw i32 %i.3, 1
  br label %for.cond106, !llvm.loop !20

for.end132:                                       ; preds = %for.cond106
  br label %for.cond133

for.cond133:                                      ; preds = %for.inc158, %for.end132
  %j.6 = phi i32 [ 0, %for.end132 ], [ %inc159, %for.inc158 ]
  %sub135 = sub nsw i32 %sub19, 1
  %cmp136 = icmp slt i32 %j.6, %sub135
  br i1 %cmp136, label %for.body137, label %for.inc161

for.body137:                                      ; preds = %for.cond133
  br label %for.cond138

for.cond138:                                      ; preds = %for.inc155, %for.body137
  %i.4 = phi i32 [ 2, %for.body137 ], [ %inc156, %for.inc155 ]
  %cmp140 = icmp slt i32 %i.4, %sub19
  br i1 %cmp140, label %for.inc155, label %for.inc158

for.inc155:                                       ; preds = %for.cond138
  %idx.ext143 = sext i32 %i.4 to i64
  %add.ptr144 = getelementptr inbounds [105 x i32], ptr %a, i64 %idx.ext143
  %idx.ext146 = sext i32 %j.6 to i64
  %add.ptr147 = getelementptr inbounds i32, ptr %add.ptr144, i64 %idx.ext146
  %9 = load i32, ptr %add.ptr147, align 4, !tbaa !5
  %add.ptr151 = getelementptr inbounds [105 x i32], ptr %add.ptr144, i64 -1
  %add.ptr154 = getelementptr inbounds i32, ptr %add.ptr151, i64 %idx.ext146
  store i32 %9, ptr %add.ptr154, align 4, !tbaa !5
  %inc156 = add nsw i32 %i.4, 1
  br label %for.cond138, !llvm.loop !21

for.inc158:                                       ; preds = %for.cond138
  %inc159 = add nsw i32 %j.6, 1
  br label %for.cond133, !llvm.loop !22

for.inc161:                                       ; preds = %for.cond133
  %inc162 = add nsw i32 %k.0, 1
  br label %for.cond15, !llvm.loop !23

for.inc166:                                       ; preds = %for.cond15
  %call164 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %call165 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call164, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc167 = add nsw i32 %z1.0, 1
  br label %for.cond, !llvm.loop !24

for.end168:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 44100, ptr noundef %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind willreturn }
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
