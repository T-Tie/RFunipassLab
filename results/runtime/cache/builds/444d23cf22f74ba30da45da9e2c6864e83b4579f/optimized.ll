; ModuleID = '<stdin>'
source_filename = "/tmp/tmplliewr1p.cpp"
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
  %range = alloca i32, align 4
  %a = alloca [102 x [102 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %range) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %range)
  call void @llvm.lifetime.start.p0(i64 noundef 41616, ptr noundef %a) #6
  br label %for.cond

for.cond:                                         ; preds = %for.inc155, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc156, %for.inc155 ]
  %0 = load i32, ptr %range, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end157

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc11, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc12, %for.inc11 ]
  %cmp2 = icmp slt i32 %j.0, %0
  br i1 %cmp2, label %for.body3, label %for.end13

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ]
  %cmp5 = icmp slt i32 %k.0, %0
  br i1 %cmp5, label %for.inc, label %for.inc11

for.inc:                                          ; preds = %for.cond4
  %idx.ext = sext i32 %j.0 to i64
  %add.ptr = getelementptr inbounds [102 x i32], ptr %a, i64 %idx.ext
  %idx.ext8 = sext i32 %k.0 to i64
  %add.ptr9 = getelementptr inbounds i32, ptr %add.ptr, i64 %idx.ext8
  %call10 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %add.ptr9)
  %inc = add nsw i32 %k.0, 1
  br label %for.cond4, !llvm.loop !9

for.inc11:                                        ; preds = %for.cond4
  %inc12 = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !12

for.end13:                                        ; preds = %for.cond1
  br label %for.cond14

for.cond14:                                       ; preds = %for.end151, %for.end13
  %sum.0 = phi i32 [ 0, %for.end13 ], [ %add, %for.end151 ]
  %n.0 = phi i32 [ %0, %for.end13 ], [ %dec, %for.end151 ]
  %cmp15 = icmp sgt i32 %n.0, 1
  br i1 %cmp15, label %for.body16, label %for.inc155

for.body16:                                       ; preds = %for.cond14
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc53, %for.body16
  %j.1 = phi i32 [ 0, %for.body16 ], [ %inc54, %for.inc53 ]
  %cmp18 = icmp slt i32 %j.1, %n.0
  br i1 %cmp18, label %for.body19, label %for.end55

for.body19:                                       ; preds = %for.cond17
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc34, %for.body19
  %k.1 = phi i32 [ 0, %for.body19 ], [ %inc35, %for.inc34 ]
  %minrow.2 = phi i32 [ 999999, %for.body19 ], [ %minrow.3, %for.inc34 ]
  %cmp21 = icmp slt i32 %k.1, %n.0
  br i1 %cmp21, label %for.body22, label %for.end36

for.body22:                                       ; preds = %for.cond20
  %idx.ext23 = sext i32 %j.1 to i64
  %add.ptr24 = getelementptr inbounds [102 x i32], ptr %a, i64 %idx.ext23
  %idx.ext26 = sext i32 %k.1 to i64
  %add.ptr27 = getelementptr inbounds i32, ptr %add.ptr24, i64 %idx.ext26
  %1 = load i32, ptr %add.ptr27, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %1, %minrow.2
  br i1 %cmp28, label %if.then, label %for.inc34

if.then:                                          ; preds = %for.body22
  br label %for.inc34

for.inc34:                                        ; preds = %for.body22, %if.then
  %minrow.3 = phi i32 [ %1, %if.then ], [ %minrow.2, %for.body22 ]
  %inc35 = add nsw i32 %k.1, 1
  br label %for.cond20, !llvm.loop !13

for.end36:                                        ; preds = %for.cond20
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc50, %for.end36
  %k.2 = phi i32 [ 0, %for.end36 ], [ %inc51, %for.inc50 ]
  %cmp38 = icmp slt i32 %k.2, %n.0
  br i1 %cmp38, label %for.inc50, label %for.inc53

for.inc50:                                        ; preds = %for.cond37
  %idx.ext40 = sext i32 %j.1 to i64
  %add.ptr41 = getelementptr inbounds [102 x i32], ptr %a, i64 %idx.ext40
  %idx.ext43 = sext i32 %k.2 to i64
  %add.ptr44 = getelementptr inbounds i32, ptr %add.ptr41, i64 %idx.ext43
  %2 = load i32, ptr %add.ptr44, align 4, !tbaa !5
  %sub = sub nsw i32 %2, %minrow.2
  store i32 %sub, ptr %add.ptr44, align 4, !tbaa !5
  %inc51 = add nsw i32 %k.2, 1
  br label %for.cond37, !llvm.loop !14

for.inc53:                                        ; preds = %for.cond37
  %inc54 = add nsw i32 %j.1, 1
  br label %for.cond17, !llvm.loop !15

for.end55:                                        ; preds = %for.cond17
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc95, %for.end55
  %k.3 = phi i32 [ 0, %for.end55 ], [ %inc96, %for.inc95 ]
  %cmp57 = icmp slt i32 %k.3, %n.0
  br i1 %cmp57, label %for.body58, label %for.end97

for.body58:                                       ; preds = %for.cond56
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc75, %for.body58
  %j.2 = phi i32 [ 0, %for.body58 ], [ %inc76, %for.inc75 ]
  %mincol.2 = phi i32 [ 999999, %for.body58 ], [ %mincol.3, %for.inc75 ]
  %cmp60 = icmp slt i32 %j.2, %n.0
  br i1 %cmp60, label %for.body61, label %for.end77

for.body61:                                       ; preds = %for.cond59
  %idx.ext62 = sext i32 %j.2 to i64
  %add.ptr63 = getelementptr inbounds [102 x i32], ptr %a, i64 %idx.ext62
  %idx.ext65 = sext i32 %k.3 to i64
  %add.ptr66 = getelementptr inbounds i32, ptr %add.ptr63, i64 %idx.ext65
  %3 = load i32, ptr %add.ptr66, align 4, !tbaa !5
  %cmp67 = icmp slt i32 %3, %mincol.2
  br i1 %cmp67, label %if.then68, label %for.inc75

if.then68:                                        ; preds = %for.body61
  br label %for.inc75

for.inc75:                                        ; preds = %for.body61, %if.then68
  %mincol.3 = phi i32 [ %3, %if.then68 ], [ %mincol.2, %for.body61 ]
  %inc76 = add nsw i32 %j.2, 1
  br label %for.cond59, !llvm.loop !16

for.end77:                                        ; preds = %for.cond59
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc92, %for.end77
  %j.3 = phi i32 [ 0, %for.end77 ], [ %inc93, %for.inc92 ]
  %cmp79 = icmp slt i32 %j.3, %n.0
  br i1 %cmp79, label %for.inc92, label %for.inc95

for.inc92:                                        ; preds = %for.cond78
  %idx.ext81 = sext i32 %j.3 to i64
  %add.ptr82 = getelementptr inbounds [102 x i32], ptr %a, i64 %idx.ext81
  %idx.ext84 = sext i32 %k.3 to i64
  %add.ptr85 = getelementptr inbounds i32, ptr %add.ptr82, i64 %idx.ext84
  %4 = load i32, ptr %add.ptr85, align 4, !tbaa !5
  %sub86 = sub nsw i32 %4, %mincol.2
  store i32 %sub86, ptr %add.ptr85, align 4, !tbaa !5
  %inc93 = add nsw i32 %j.3, 1
  br label %for.cond78, !llvm.loop !17

for.inc95:                                        ; preds = %for.cond78
  %inc96 = add nsw i32 %k.3, 1
  br label %for.cond56, !llvm.loop !18

for.end97:                                        ; preds = %for.cond56
  %add.ptr98 = getelementptr inbounds [102 x i32], ptr %a, i64 1
  %add.ptr100 = getelementptr inbounds i32, ptr %add.ptr98, i64 1
  %5 = load i32, ptr %add.ptr100, align 4, !tbaa !5
  %add = add nsw i32 %sum.0, %5
  %cmp101 = icmp eq i32 %n.0, 2
  br i1 %cmp101, label %for.inc155, label %if.end103

if.end103:                                        ; preds = %for.end97
  br label %for.cond104

for.cond104:                                      ; preds = %for.inc125, %if.end103
  %j.4 = phi i32 [ 1, %if.end103 ], [ %inc126, %for.inc125 ]
  %sub105 = sub nsw i32 %n.0, 2
  %cmp106 = icmp sle i32 %j.4, %sub105
  br i1 %cmp106, label %for.body107, label %for.end127

for.body107:                                      ; preds = %for.cond104
  br label %for.cond108

for.cond108:                                      ; preds = %for.inc122, %for.body107
  %k.4 = phi i32 [ 0, %for.body107 ], [ %inc123, %for.inc122 ]
  %cmp109 = icmp slt i32 %k.4, %n.0
  br i1 %cmp109, label %for.inc122, label %for.inc125

for.inc122:                                       ; preds = %for.cond108
  %idx.ext111 = sext i32 %j.4 to i64
  %add.ptr112 = getelementptr inbounds [102 x i32], ptr %a, i64 %idx.ext111
  %add.ptr113 = getelementptr inbounds [102 x i32], ptr %add.ptr112, i64 1
  %idx.ext115 = sext i32 %k.4 to i64
  %add.ptr116 = getelementptr inbounds i32, ptr %add.ptr113, i64 %idx.ext115
  %6 = load i32, ptr %add.ptr116, align 4, !tbaa !5
  %add.ptr121 = getelementptr inbounds i32, ptr %add.ptr112, i64 %idx.ext115
  store i32 %6, ptr %add.ptr121, align 4, !tbaa !5
  %inc123 = add nsw i32 %k.4, 1
  br label %for.cond108, !llvm.loop !19

for.inc125:                                       ; preds = %for.cond108
  %inc126 = add nsw i32 %j.4, 1
  br label %for.cond104, !llvm.loop !20

for.end127:                                       ; preds = %for.cond104
  br label %for.cond128

for.cond128:                                      ; preds = %for.inc149, %for.end127
  %j.5 = phi i32 [ 1, %for.end127 ], [ %inc150, %for.inc149 ]
  %cmp130 = icmp sle i32 %j.5, %sub105
  br i1 %cmp130, label %for.body131, label %for.end151

for.body131:                                      ; preds = %for.cond128
  br label %for.cond132

for.cond132:                                      ; preds = %for.inc146, %for.body131
  %k.5 = phi i32 [ 0, %for.body131 ], [ %inc147, %for.inc146 ]
  %cmp133 = icmp slt i32 %k.5, %n.0
  br i1 %cmp133, label %for.inc146, label %for.inc149

for.inc146:                                       ; preds = %for.cond132
  %idx.ext135 = sext i32 %k.5 to i64
  %add.ptr136 = getelementptr inbounds [102 x i32], ptr %a, i64 %idx.ext135
  %idx.ext138 = sext i32 %j.5 to i64
  %add.ptr139 = getelementptr inbounds i32, ptr %add.ptr136, i64 %idx.ext138
  %add.ptr140 = getelementptr inbounds i32, ptr %add.ptr139, i64 1
  %7 = load i32, ptr %add.ptr140, align 4, !tbaa !5
  store i32 %7, ptr %add.ptr139, align 4, !tbaa !5
  %inc147 = add nsw i32 %k.5, 1
  br label %for.cond132, !llvm.loop !21

for.inc149:                                       ; preds = %for.cond132
  %inc150 = add nsw i32 %j.5, 1
  br label %for.cond128, !llvm.loop !22

for.end151:                                       ; preds = %for.cond128
  %dec = add nsw i32 %n.0, -1
  br label %for.cond14, !llvm.loop !23

for.inc155:                                       ; preds = %for.cond14, %for.end97
  %sum.1 = phi i32 [ %sum.0, %for.cond14 ], [ %add, %for.end97 ]
  %call153 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.1)
  %call154 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call153, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc156 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !24

for.end157:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 41616, ptr noundef %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %range) #6
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

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
