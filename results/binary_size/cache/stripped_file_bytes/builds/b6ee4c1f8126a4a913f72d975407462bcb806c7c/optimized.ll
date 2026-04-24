; ModuleID = '<stdin>'
source_filename = "/tmp/tmp31o7t6tr.cpp"
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
  %a = alloca [110 x [110 x i32]], align 16
  %b = alloca [110 x i32], align 16
  %num1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 48400, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 440, ptr noundef nonnull align 16 %b) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %num1) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %num1)
  %add.ptr127 = getelementptr inbounds nuw i8, ptr %a, i64 444
  br label %for.cond

for.cond:                                         ; preds = %while.end, %entry
  %m.0 = phi i32 [ 0, %entry ], [ %inc186, %while.end ]
  %0 = load i32, ptr %num1, align 4, !tbaa !5
  %cmp = icmp slt i32 %m.0, %0
  br i1 %cmp, label %for.cond2.preheader, label %for.end187

for.cond2.preheader:                              ; preds = %for.cond
  %wide.trip.count101 = zext i32 %0 to i64
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.preheader, %for.end
  %indvars.iv98 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next99, %for.end ]
  %exitcond102.not = icmp eq i64 %indvars.iv98, %wide.trip.count101
  br i1 %exitcond102.not, label %while.cond.preheader, label %for.cond5.preheader

while.cond.preheader:                             ; preds = %for.cond2
  %1 = load i32, ptr %add.ptr127, align 4
  %2 = add i32 %0, -1
  %3 = zext i32 %2 to i64
  br label %while.cond

for.cond5.preheader:                              ; preds = %for.cond2
  %add.ptr = getelementptr inbounds nuw [110 x i32], ptr %a, i64 %indvars.iv98
  br label %for.cond5

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %indvars.iv = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next, %for.body7 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count101
  br i1 %exitcond.not, label %for.end, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %add.ptr10 = getelementptr inbounds nuw i32, ptr %add.ptr, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %add.ptr10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond5, !llvm.loop !9

for.end:                                          ; preds = %for.cond5
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  br label %for.cond2, !llvm.loop !12

while.cond:                                       ; preds = %while.cond.preheader, %for.end182
  %indvars.iv167 = phi i64 [ %wide.trip.count101, %while.cond.preheader ], [ %indvars.iv.next168, %for.end182 ]
  %indvars.iv165 = phi i64 [ %3, %while.cond.preheader ], [ %indvars.iv.next166, %for.end182 ]
  %cmp15 = icmp sgt i64 %indvars.iv167, 1
  br i1 %cmp15, label %for.cond16, label %while.end

for.cond16:                                       ; preds = %while.cond, %for.end41
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %for.end41 ], [ 0, %while.cond ]
  %exitcond112.not = icmp eq i64 %indvars.iv108, %indvars.iv167
  br i1 %exitcond112.not, label %for.cond45, label %for.body18

for.body18:                                       ; preds = %for.cond16
  %add.ptr20 = getelementptr inbounds nuw i32, ptr %b, i64 %indvars.iv108
  store i32 10000, ptr %add.ptr20, align 4, !tbaa !5
  %add.ptr25 = getelementptr inbounds nuw [110 x i32], ptr %a, i64 %indvars.iv108
  br label %for.cond21

for.cond21:                                       ; preds = %if.end, %for.body18
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %if.end ], [ 0, %for.body18 ]
  %exitcond107.not = icmp eq i64 %indvars.iv103, %indvars.iv167
  br i1 %exitcond107.not, label %for.end41, label %for.body23

for.body23:                                       ; preds = %for.cond21
  %add.ptr28 = getelementptr inbounds nuw i32, ptr %add.ptr25, i64 %indvars.iv103
  %4 = load i32, ptr %add.ptr28, align 4, !tbaa !5, !invariant.load !13
  %cmp31 = icmp slt i32 %4, 10000
  br i1 %cmp31, label %if.then, label %if.end

if.then:                                          ; preds = %for.body23
  store i32 %4, ptr %add.ptr20, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body23
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  br label %for.cond21, !llvm.loop !14

for.end41:                                        ; preds = %for.cond21
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1
  br label %for.cond16, !llvm.loop !15

for.cond45:                                       ; preds = %for.cond16, %for.end65
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %for.end65 ], [ 0, %for.cond16 ]
  %exitcond122.not = icmp eq i64 %indvars.iv118, %indvars.iv167
  br i1 %exitcond122.not, label %for.cond69, label %for.cond48.preheader

for.cond48.preheader:                             ; preds = %for.cond45
  %add.ptr52 = getelementptr inbounds nuw [110 x i32], ptr %a, i64 %indvars.iv118
  %add.ptr57 = getelementptr inbounds nuw i32, ptr %b, i64 %indvars.iv118
  %5 = load i32, ptr %add.ptr57, align 4, !tbaa !5, !invariant.load !13
  br label %for.cond48

for.cond48:                                       ; preds = %for.cond48.preheader, %for.body50
  %indvars.iv113 = phi i64 [ 0, %for.cond48.preheader ], [ %indvars.iv.next114, %for.body50 ]
  %exitcond117.not = icmp eq i64 %indvars.iv113, %indvars.iv167
  br i1 %exitcond117.not, label %for.end65, label %for.body50

for.body50:                                       ; preds = %for.cond48
  %add.ptr55 = getelementptr inbounds nuw i32, ptr %add.ptr52, i64 %indvars.iv113
  %6 = load i32, ptr %add.ptr55, align 4, !tbaa !5, !invariant.load !13
  %sub = sub nsw i32 %6, %5
  store i32 %sub, ptr %add.ptr55, align 4, !tbaa !5
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1
  br label %for.cond48, !llvm.loop !16

for.end65:                                        ; preds = %for.cond48
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1
  br label %for.cond45, !llvm.loop !17

for.cond69:                                       ; preds = %for.cond45, %for.end96
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %for.end96 ], [ 0, %for.cond45 ]
  %exitcond132.not = icmp eq i64 %indvars.iv128, %indvars.iv167
  br i1 %exitcond132.not, label %for.cond100, label %for.body71

for.body71:                                       ; preds = %for.cond69
  %add.ptr73 = getelementptr inbounds nuw i32, ptr %b, i64 %indvars.iv128
  store i32 10000, ptr %add.ptr73, align 4, !tbaa !5
  %invariant.gep = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv128
  br label %for.cond74

for.cond74:                                       ; preds = %if.end93, %for.body71
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %if.end93 ], [ 0, %for.body71 ]
  %exitcond127.not = icmp eq i64 %indvars.iv123, %indvars.iv167
  br i1 %exitcond127.not, label %for.end96, label %for.body76

for.body76:                                       ; preds = %for.cond74
  %gep = getelementptr inbounds nuw [110 x i32], ptr %invariant.gep, i64 %indvars.iv123
  %7 = load i32, ptr %gep, align 4, !tbaa !5, !invariant.load !13
  %cmp84 = icmp slt i32 %7, 10000
  br i1 %cmp84, label %if.then85, label %if.end93

if.then85:                                        ; preds = %for.body76
  store i32 %7, ptr %add.ptr73, align 4, !tbaa !5
  br label %if.end93

if.end93:                                         ; preds = %if.then85, %for.body76
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1
  br label %for.cond74, !llvm.loop !18

for.end96:                                        ; preds = %for.cond74
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1
  br label %for.cond69, !llvm.loop !19

for.cond100:                                      ; preds = %for.cond69, %for.end121
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %for.end121 ], [ 0, %for.cond69 ]
  %exitcond142.not = icmp eq i64 %indvars.iv138, %indvars.iv167
  br i1 %exitcond142.not, label %for.cond128, label %for.cond103.preheader

for.cond103.preheader:                            ; preds = %for.cond100
  %add.ptr107 = getelementptr inbounds nuw [110 x i32], ptr %a, i64 %indvars.iv138
  br label %for.cond103

for.cond103:                                      ; preds = %for.cond103.preheader, %for.body105
  %indvars.iv133 = phi i64 [ 0, %for.cond103.preheader ], [ %indvars.iv.next134, %for.body105 ]
  %exitcond137.not = icmp eq i64 %indvars.iv133, %indvars.iv167
  br i1 %exitcond137.not, label %for.end121, label %for.body105

for.body105:                                      ; preds = %for.cond103
  %add.ptr110 = getelementptr inbounds nuw i32, ptr %add.ptr107, i64 %indvars.iv133
  %8 = load i32, ptr %add.ptr110, align 4, !tbaa !5, !invariant.load !13
  %add.ptr112 = getelementptr inbounds nuw i32, ptr %b, i64 %indvars.iv133
  %9 = load i32, ptr %add.ptr112, align 4, !tbaa !5, !invariant.load !13
  %sub113 = sub nsw i32 %8, %9
  store i32 %sub113, ptr %add.ptr110, align 4, !tbaa !5
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1
  br label %for.cond103, !llvm.loop !20

for.end121:                                       ; preds = %for.cond103
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1
  br label %for.cond100, !llvm.loop !21

for.cond128:                                      ; preds = %for.cond100, %for.end151
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %for.end151 ], [ 0, %for.cond100 ]
  %exitcond154.not = icmp eq i64 %indvars.iv150, %indvars.iv167
  br i1 %exitcond154.not, label %for.cond155, label %for.cond131.preheader

for.cond131.preheader:                            ; preds = %for.cond128
  %add.ptr138 = getelementptr inbounds nuw [110 x i32], ptr %a, i64 %indvars.iv150
  br label %for.cond131

for.cond131:                                      ; preds = %for.cond131.preheader, %if.end148
  %indvars.iv143 = phi i64 [ 0, %for.cond131.preheader ], [ %indvars.iv.next144, %if.end148 ]
  %exitcond149.not = icmp eq i64 %indvars.iv143, %indvars.iv165
  br i1 %exitcond149.not, label %for.end151, label %for.body134

for.body134:                                      ; preds = %for.cond131
  %cmp135.not = icmp eq i64 %indvars.iv143, 0
  br i1 %cmp135.not, label %if.end148, label %if.then136

if.then136:                                       ; preds = %for.body134
  %add.ptr141 = getelementptr inbounds nuw i32, ptr %add.ptr138, i64 %indvars.iv143
  %add.ptr142 = getelementptr inbounds nuw i8, ptr %add.ptr141, i64 4
  %10 = load i32, ptr %add.ptr142, align 4, !tbaa !5, !invariant.load !13
  store i32 %10, ptr %add.ptr141, align 4, !tbaa !5
  br label %if.end148

if.end148:                                        ; preds = %if.then136, %for.body134
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1
  br label %for.cond131, !llvm.loop !22

for.end151:                                       ; preds = %for.cond131
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1
  br label %for.cond128, !llvm.loop !23

for.cond155:                                      ; preds = %for.cond128, %for.end179
  %indvars.iv160 = phi i64 [ %indvars.iv.next161, %for.end179 ], [ 0, %for.cond128 ]
  %exitcond164.not = icmp eq i64 %indvars.iv160, %indvars.iv165
  br i1 %exitcond164.not, label %for.end182, label %for.cond159

for.cond159:                                      ; preds = %for.cond155, %if.end176
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %if.end176 ], [ 0, %for.cond155 ]
  %exitcond159.not = icmp eq i64 %indvars.iv155, %indvars.iv165
  br i1 %exitcond159.not, label %for.end179, label %for.body162

for.body162:                                      ; preds = %for.cond159
  %cmp163.not = icmp eq i64 %indvars.iv155, 0
  br i1 %cmp163.not, label %if.end176, label %if.then164

if.then164:                                       ; preds = %for.body162
  %add.ptr166 = getelementptr inbounds nuw [110 x i32], ptr %a, i64 %indvars.iv155
  %add.ptr167 = getelementptr inbounds nuw i8, ptr %add.ptr166, i64 440
  %add.ptr170 = getelementptr inbounds nuw i32, ptr %add.ptr167, i64 %indvars.iv160
  %11 = load i32, ptr %add.ptr170, align 4, !tbaa !5
  %add.ptr175 = getelementptr inbounds nuw i32, ptr %add.ptr166, i64 %indvars.iv160
  store i32 %11, ptr %add.ptr175, align 4, !tbaa !5
  br label %if.end176

if.end176:                                        ; preds = %if.then164, %for.body162
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1
  br label %for.cond159, !llvm.loop !24

for.end179:                                       ; preds = %for.cond159
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1
  br label %for.cond155, !llvm.loop !25

for.end182:                                       ; preds = %for.cond155
  %indvars.iv.next168 = add nsw i64 %indvars.iv167, -1
  %indvars.iv.next166 = add nsw i64 %indvars.iv165, -1
  br label %while.cond, !llvm.loop !26

while.end:                                        ; preds = %while.cond
  %12 = mul i32 %1, %2
  %call183 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %12)
  %call184 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call183, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc186 = add nuw nsw i32 %m.0, 1
  br label %for.cond, !llvm.loop !27

for.end187:                                       ; preds = %for.cond
  %call188 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %call189 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %call190 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %call191 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %num1) #6
  call void @llvm.lifetime.end.p0(i64 noundef 440, ptr noundef nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 48400, ptr noundef nonnull %a) #6
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

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
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
!13 = !{}
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
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11}
