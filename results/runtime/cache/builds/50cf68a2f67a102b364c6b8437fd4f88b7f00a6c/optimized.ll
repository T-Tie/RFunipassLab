; ModuleID = '<stdin>'
source_filename = "/tmp/tmpimoqv4aq.cpp"
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
  %s = alloca [100 x [100 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef align 16 %s) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc187, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc188, %for.inc187 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end189

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc11, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc12, %for.inc11 ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %j.0, %1
  br i1 %cmp2, label %for.body3, label %for.end13

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %p.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ]
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %p.0, %2
  br i1 %cmp5, label %for.inc, label %for.inc11

for.inc:                                          ; preds = %for.cond4
  %idx.ext = sext i32 %j.0 to i64
  %add.ptr = getelementptr inbounds [100 x i32], ptr %s, i64 %idx.ext
  %idx.ext8 = sext i32 %p.0 to i64
  %add.ptr9 = getelementptr inbounds i32, ptr %add.ptr, i64 %idx.ext8
  %call10 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %add.ptr9)
  %inc = add nsw i32 %p.0, 1
  br label %for.cond4, !llvm.loop !9

for.inc11:                                        ; preds = %for.cond4
  %inc12 = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !12

for.end13:                                        ; preds = %for.cond1
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc182, %for.end13
  %l.0 = phi i32 [ 0, %for.end13 ], [ %inc181, %for.inc182 ]
  %count1.0 = phi i32 [ 0, %for.end13 ], [ %add, %for.inc182 ]
  %k.0 = phi i32 [ 1, %for.end13 ], [ %inc183, %for.inc182 ]
  %cmp15 = icmp slt i32 %k.0, %1
  br i1 %cmp15, label %for.body16, label %for.inc187

for.body16:                                       ; preds = %for.cond14
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc65, %for.body16
  %j.1 = phi i32 [ 0, %for.body16 ], [ %inc66, %for.inc65 ]
  %sub = sub nsw i32 %1, %l.0
  %cmp18 = icmp slt i32 %j.1, %sub
  br i1 %cmp18, label %for.body19, label %for.end67

for.body19:                                       ; preds = %for.cond17
  %idx.ext21 = sext i32 %j.1 to i64
  %add.ptr22 = getelementptr inbounds [100 x i32], ptr %s, i64 %idx.ext21
  %3 = load i32, ptr %add.ptr22, align 4, !tbaa !5
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc42, %for.body19
  %min.0 = phi i32 [ %3, %for.body19 ], [ %min.1, %for.inc42 ]
  %p.1 = phi i32 [ 0, %for.body19 ], [ %inc43, %for.inc42 ]
  %cmp27 = icmp slt i32 %p.1, %sub
  br i1 %cmp27, label %for.body28, label %for.end44

for.body28:                                       ; preds = %for.cond25
  %idx.ext33 = sext i32 %p.1 to i64
  %add.ptr34 = getelementptr inbounds i32, ptr %add.ptr22, i64 %idx.ext33
  %4 = load i32, ptr %add.ptr34, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %4, %min.0
  br i1 %cmp35, label %if.then, label %for.inc42

if.then:                                          ; preds = %for.body28
  br label %for.inc42

for.inc42:                                        ; preds = %for.body28, %if.then
  %min.1 = phi i32 [ %4, %if.then ], [ %min.0, %for.body28 ]
  %inc43 = add nsw i32 %p.1, 1
  br label %for.cond25, !llvm.loop !13

for.end44:                                        ; preds = %for.cond25
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc62, %for.end44
  %p.2 = phi i32 [ 0, %for.end44 ], [ %inc63, %for.inc62 ]
  %cmp47 = icmp slt i32 %p.2, %sub
  br i1 %cmp47, label %for.inc62, label %for.inc65

for.inc62:                                        ; preds = %for.cond45
  %idx.ext53 = sext i32 %p.2 to i64
  %add.ptr54 = getelementptr inbounds i32, ptr %add.ptr22, i64 %idx.ext53
  %5 = load i32, ptr %add.ptr54, align 4, !tbaa !5
  %sub55 = sub nsw i32 %5, %min.0
  store i32 %sub55, ptr %add.ptr54, align 4, !tbaa !5
  %inc63 = add nsw i32 %p.2, 1
  br label %for.cond45, !llvm.loop !14

for.inc65:                                        ; preds = %for.cond45
  %inc66 = add nsw i32 %j.1, 1
  br label %for.cond17, !llvm.loop !15

for.end67:                                        ; preds = %for.cond17
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc118, %for.end67
  %j.2 = phi i32 [ 0, %for.end67 ], [ %inc119, %for.inc118 ]
  %cmp70 = icmp slt i32 %j.2, %sub
  br i1 %cmp70, label %for.body71, label %for.end120

for.body71:                                       ; preds = %for.cond68
  %idx.ext74 = sext i32 %j.2 to i64
  %add.ptr75 = getelementptr inbounds i32, ptr %s, i64 %idx.ext74
  %6 = load i32, ptr %add.ptr75, align 4, !tbaa !5
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc95, %for.body71
  %min.2 = phi i32 [ %6, %for.body71 ], [ %min.3, %for.inc95 ]
  %p.3 = phi i32 [ 0, %for.body71 ], [ %inc96, %for.inc95 ]
  %cmp78 = icmp slt i32 %p.3, %sub
  br i1 %cmp78, label %for.body79, label %for.end97

for.body79:                                       ; preds = %for.cond76
  %idx.ext81 = sext i32 %p.3 to i64
  %add.ptr82 = getelementptr inbounds [100 x i32], ptr %s, i64 %idx.ext81
  %add.ptr85 = getelementptr inbounds i32, ptr %add.ptr82, i64 %idx.ext74
  %7 = load i32, ptr %add.ptr85, align 4, !tbaa !5
  %cmp86 = icmp slt i32 %7, %min.2
  br i1 %cmp86, label %if.then87, label %for.inc95

if.then87:                                        ; preds = %for.body79
  br label %for.inc95

for.inc95:                                        ; preds = %for.body79, %if.then87
  %min.3 = phi i32 [ %7, %if.then87 ], [ %min.2, %for.body79 ]
  %inc96 = add nsw i32 %p.3, 1
  br label %for.cond76, !llvm.loop !16

for.end97:                                        ; preds = %for.cond76
  br label %for.cond98

for.cond98:                                       ; preds = %for.inc115, %for.end97
  %p.4 = phi i32 [ 0, %for.end97 ], [ %inc116, %for.inc115 ]
  %cmp100 = icmp slt i32 %p.4, %sub
  br i1 %cmp100, label %for.inc115, label %for.inc118

for.inc115:                                       ; preds = %for.cond98
  %idx.ext103 = sext i32 %p.4 to i64
  %add.ptr104 = getelementptr inbounds [100 x i32], ptr %s, i64 %idx.ext103
  %add.ptr107 = getelementptr inbounds i32, ptr %add.ptr104, i64 %idx.ext74
  %8 = load i32, ptr %add.ptr107, align 4, !tbaa !5
  %sub108 = sub nsw i32 %8, %min.2
  store i32 %sub108, ptr %add.ptr107, align 4, !tbaa !5
  %inc116 = add nsw i32 %p.4, 1
  br label %for.cond98, !llvm.loop !17

for.inc118:                                       ; preds = %for.cond98
  %inc119 = add nsw i32 %j.2, 1
  br label %for.cond68, !llvm.loop !18

for.end120:                                       ; preds = %for.cond68
  %add.ptr122 = getelementptr inbounds [100 x i32], ptr %s, i64 1
  %add.ptr124 = getelementptr inbounds i32, ptr %add.ptr122, i64 1
  %9 = load i32, ptr %add.ptr124, align 4, !tbaa !5
  %add = add nsw i32 %count1.0, %9
  br label %for.cond125

for.cond125:                                      ; preds = %for.inc150, %for.end120
  %j.3 = phi i32 [ 0, %for.end120 ], [ %inc151, %for.inc150 ]
  %cmp127 = icmp slt i32 %j.3, %sub
  br i1 %cmp127, label %for.body128, label %for.end152

for.body128:                                      ; preds = %for.cond125
  br label %for.cond129

for.cond129:                                      ; preds = %for.inc147, %for.body128
  %p.5 = phi i32 [ 1, %for.body128 ], [ %inc148, %for.inc147 ]
  %sub130 = sub nsw i32 %1, 1
  %sub131 = sub nsw i32 %sub130, %l.0
  %cmp132 = icmp slt i32 %p.5, %sub131
  br i1 %cmp132, label %for.inc147, label %for.inc150

for.inc147:                                       ; preds = %for.cond129
  %idx.ext135 = sext i32 %j.3 to i64
  %add.ptr136 = getelementptr inbounds [100 x i32], ptr %s, i64 %idx.ext135
  %idx.ext138 = sext i32 %p.5 to i64
  %add.ptr139 = getelementptr inbounds i32, ptr %add.ptr136, i64 %idx.ext138
  %add.ptr140 = getelementptr inbounds i32, ptr %add.ptr139, i64 1
  %10 = load i32, ptr %add.ptr140, align 4, !tbaa !5
  store i32 %10, ptr %add.ptr139, align 4, !tbaa !5
  %inc148 = add nsw i32 %p.5, 1
  br label %for.cond129, !llvm.loop !19

for.inc150:                                       ; preds = %for.cond129
  %inc151 = add nsw i32 %j.3, 1
  br label %for.cond125, !llvm.loop !20

for.end152:                                       ; preds = %for.cond125
  br label %for.cond153

for.cond153:                                      ; preds = %for.inc178, %for.end152
  %j.4 = phi i32 [ 0, %for.end152 ], [ %inc179, %for.inc178 ]
  %cmp155 = icmp slt i32 %j.4, %sub
  br i1 %cmp155, label %for.body156, label %for.inc182

for.body156:                                      ; preds = %for.cond153
  br label %for.cond157

for.cond157:                                      ; preds = %for.inc175, %for.body156
  %p.6 = phi i32 [ 1, %for.body156 ], [ %inc176, %for.inc175 ]
  %sub158 = sub nsw i32 %1, 1
  %sub159 = sub nsw i32 %sub158, %l.0
  %cmp160 = icmp slt i32 %p.6, %sub159
  br i1 %cmp160, label %for.inc175, label %for.inc178

for.inc175:                                       ; preds = %for.cond157
  %idx.ext163 = sext i32 %p.6 to i64
  %add.ptr164 = getelementptr inbounds [100 x i32], ptr %s, i64 %idx.ext163
  %add.ptr165 = getelementptr inbounds [100 x i32], ptr %add.ptr164, i64 1
  %idx.ext167 = sext i32 %j.4 to i64
  %add.ptr168 = getelementptr inbounds i32, ptr %add.ptr165, i64 %idx.ext167
  %11 = load i32, ptr %add.ptr168, align 4, !tbaa !5
  %add.ptr174 = getelementptr inbounds i32, ptr %add.ptr164, i64 %idx.ext167
  store i32 %11, ptr %add.ptr174, align 4, !tbaa !5
  %inc176 = add nsw i32 %p.6, 1
  br label %for.cond157, !llvm.loop !21

for.inc178:                                       ; preds = %for.cond157
  %inc179 = add nsw i32 %j.4, 1
  br label %for.cond153, !llvm.loop !22

for.inc182:                                       ; preds = %for.cond153
  %inc181 = add nsw i32 %l.0, 1
  %inc183 = add nsw i32 %k.0, 1
  br label %for.cond14, !llvm.loop !23

for.inc187:                                       ; preds = %for.cond14
  %call185 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %count1.0)
  %call186 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call185, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc188 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !24

for.end189:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #6
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %s) #6
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
