; ModuleID = '<stdin>'
source_filename = "/tmp/tmpdt89ij21.cpp"
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
  %a = alloca [111 x [111 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 49284, ptr noundef nonnull dereferenceable(49284) %a) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %a, i64 444
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %a, i64 448
  br label %for.cond

for.cond:                                         ; preds = %for.end181, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc.i.i23, %for.end181 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %i.0, %0
  br i1 %cmp.not, label %for.end186, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.end
  %1 = phi i32 [ %5, %for.end ], [ %0, %for.cond ]
  %indvars.iv164 = phi i64 [ %indvars.iv.next165, %for.end ], [ 1, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2.not = icmp sgt i64 %indvars.iv164, %2
  br i1 %cmp2.not, label %for.cond13.preheader, label %for.cond4

for.cond13.preheader:                             ; preds = %for.cond1
  %3 = load i32, ptr %arrayidx27, align 16
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 noundef 1)
  %4 = add nuw i32 %smax, 1
  %wide.trip.count219 = zext i32 %4 to i64
  %wide.trip.count = zext i32 %1 to i64
  br label %for.cond13

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %5 = phi i32 [ %.pre, %for.body6 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 1, %for.cond1 ]
  %6 = sext i32 %5 to i64
  %cmp5.not = icmp sgt i64 %indvars.iv, %6
  br i1 %cmp5.not, label %for.end, label %for.body6

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv164, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4

for.end:                                          ; preds = %for.cond4
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1
  br label %for.cond1

for.cond13:                                       ; preds = %for.cond13.preheader, %for.end171
  %indvars.iv179 = phi i64 [ 2, %for.cond13.preheader ], [ %indvars.iv.next180, %for.end171 ]
  %indvars.iv167 = phi i64 [ 1, %for.cond13.preheader ], [ %indvars.iv.next168, %for.end171 ]
  %sum.0 = phi i32 [ 0, %for.cond13.preheader ], [ %add178, %for.end171 ]
  %exitcond220.not = icmp eq i64 %indvars.iv179, %wide.trip.count219
  br i1 %exitcond220.not, label %for.end181, label %for.cond16

for.cond16:                                       ; preds = %for.cond13, %for.inc23
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %for.inc23 ], [ %indvars.iv167, %for.cond13 ]
  %Min.0 = phi i32 [ %.sroa.speculated55, %for.inc23 ], [ 10000, %for.cond13 ]
  %exitcond.not = icmp eq i64 %indvars.iv169, %wide.trip.count
  br i1 %exitcond.not, label %for.end25, label %for.inc23

for.inc23:                                        ; preds = %for.cond16
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1
  %arrayidx21 = getelementptr inbounds nuw [111 x i32], ptr %arrayidx19, i64 0, i64 %indvars.iv.next170
  %7 = load i32, ptr %arrayidx21, align 4, !tbaa !5, !invariant.load !9
  %.sroa.speculated55 = call i32 @llvm.smin.i32(i32 %7, i32 %Min.0)
  br label %for.cond16, !llvm.loop !10

for.end25:                                        ; preds = %for.cond16
  %.sroa.speculated52 = call i32 @llvm.smin.i32(i32 %3, i32 %Min.0)
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc39, %for.end25
  %indvars.iv173 = phi i64 [ %indvars.iv.next174, %for.inc39 ], [ %indvars.iv167, %for.end25 ]
  %exitcond178.not = icmp eq i64 %indvars.iv173, %wide.trip.count
  br i1 %exitcond178.not, label %for.cond48, label %for.inc39

for.inc39:                                        ; preds = %for.cond30
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1
  %arrayidx35 = getelementptr inbounds nuw [111 x i32], ptr %arrayidx19, i64 0, i64 %indvars.iv.next174
  %8 = load i32, ptr %arrayidx35, align 4, !tbaa !5, !invariant.load !9
  %sub = sub nsw i32 %8, %.sroa.speculated52
  store i32 %sub, ptr %arrayidx35, align 4, !tbaa !5
  br label %for.cond30, !llvm.loop !13

for.cond48:                                       ; preds = %for.cond30, %for.inc90
  %indvars.iv187 = phi i64 [ %indvars.iv.next188, %for.inc90 ], [ %indvars.iv167, %for.cond30 ]
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1
  %exitcond192.not = icmp eq i64 %indvars.iv187, %wide.trip.count
  br i1 %exitcond192.not, label %for.cond94, label %for.cond52

for.cond52:                                       ; preds = %for.cond48, %for.body54
  %indvars.iv181 = phi i64 [ %indvars.iv.next182, %for.body54 ], [ %indvars.iv179, %for.cond48 ]
  %Min.1 = phi i32 [ %.sroa.speculated49, %for.body54 ], [ 10000, %for.cond48 ]
  %9 = trunc nuw i64 %indvars.iv181 to i32
  %cmp53.not = icmp slt i32 %1, %9
  br i1 %cmp53.not, label %for.end62, label %for.body54

for.body54:                                       ; preds = %for.cond52
  %arrayidx58 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv.next188, i64 %indvars.iv181
  %10 = load i32, ptr %arrayidx58, align 4, !tbaa !5, !invariant.load !9
  %.sroa.speculated49 = call i32 @llvm.smin.i32(i32 %10, i32 %Min.1)
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1
  br label %for.cond52

for.end62:                                        ; preds = %for.cond52
  %arrayidx65 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv.next188, i64 1
  %11 = load i32, ptr %arrayidx65, align 4, !tbaa !5, !invariant.load !9
  %.sroa.speculated46 = call i32 @llvm.smin.i32(i32 %11, i32 %Min.1)
  br label %for.cond68

for.cond68:                                       ; preds = %for.body70, %for.end62
  %indvars.iv184 = phi i64 [ %indvars.iv.next185, %for.body70 ], [ %indvars.iv179, %for.end62 ]
  %12 = trunc nuw i64 %indvars.iv184 to i32
  %cmp69.not = icmp slt i32 %1, %12
  br i1 %cmp69.not, label %for.inc90, label %for.body70

for.body70:                                       ; preds = %for.cond68
  %arrayidx74 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv.next188, i64 %indvars.iv184
  %13 = load i32, ptr %arrayidx74, align 4, !tbaa !5, !invariant.load !9
  %sub75 = sub nsw i32 %13, %.sroa.speculated46
  store i32 %sub75, ptr %arrayidx74, align 4, !tbaa !5
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1
  br label %for.cond68

for.inc90:                                        ; preds = %for.cond68
  %sub86 = sub nsw i32 %11, %.sroa.speculated46
  store i32 %sub86, ptr %arrayidx65, align 4, !tbaa !5
  br label %for.cond48, !llvm.loop !14

for.cond94:                                       ; preds = %for.cond48, %for.inc101
  %indvars.iv193 = phi i64 [ %indvars.iv.next194, %for.inc101 ], [ %indvars.iv179, %for.cond48 ]
  %Min.2 = phi i32 [ %.sroa.speculated43, %for.inc101 ], [ 10000, %for.cond48 ]
  %14 = trunc nuw i64 %indvars.iv193 to i32
  %cmp95.not = icmp slt i32 %1, %14
  br i1 %cmp95.not, label %for.end103, label %for.inc101

for.inc101:                                       ; preds = %for.cond94
  %arrayidx99 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv193, i64 1
  %15 = load i32, ptr %arrayidx99, align 4, !tbaa !5, !invariant.load !9
  %.sroa.speculated43 = call i32 @llvm.smin.i32(i32 %15, i32 %Min.2)
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1
  br label %for.cond94, !llvm.loop !15

for.end103:                                       ; preds = %for.cond94
  %sub44 = sub nsw i32 %3, %.sroa.speculated52
  %.sroa.speculated40 = call i32 @llvm.smin.i32(i32 %sub44, i32 %Min.2)
  br label %for.cond108

for.cond108:                                      ; preds = %for.inc118, %for.end103
  %indvars.iv196 = phi i64 [ %indvars.iv.next197, %for.inc118 ], [ %indvars.iv167, %for.end103 ]
  %exitcond201.not = icmp eq i64 %indvars.iv196, %wide.trip.count
  br i1 %exitcond201.not, label %for.end120, label %for.inc118

for.inc118:                                       ; preds = %for.cond108
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1
  %arrayidx113 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv.next197, i64 1
  %16 = load i32, ptr %arrayidx113, align 4, !tbaa !5, !invariant.load !9
  %sub114 = sub nsw i32 %16, %.sroa.speculated40
  store i32 %sub114, ptr %arrayidx113, align 4, !tbaa !5
  br label %for.cond108, !llvm.loop !16

for.end120:                                       ; preds = %for.cond108
  %sub123 = sub nsw i32 %sub44, %.sroa.speculated40
  store i32 %sub123, ptr %arrayidx27, align 16, !tbaa !5
  br label %for.cond127

for.cond127:                                      ; preds = %for.inc169, %for.end120
  %indvars.iv211 = phi i64 [ %indvars.iv.next212, %for.inc169 ], [ %indvars.iv167, %for.end120 ]
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1
  %exitcond216.not = icmp eq i64 %indvars.iv211, %wide.trip.count
  br i1 %exitcond216.not, label %for.end171, label %for.cond131

for.cond131:                                      ; preds = %for.cond127, %for.inc139
  %indvars.iv202 = phi i64 [ %indvars.iv.next203, %for.inc139 ], [ %indvars.iv179, %for.cond127 ]
  %Min.3 = phi i32 [ %.sroa.speculated37, %for.inc139 ], [ 10000, %for.cond127 ]
  %17 = trunc nuw i64 %indvars.iv202 to i32
  %cmp132.not = icmp slt i32 %1, %17
  br i1 %cmp132.not, label %for.end141, label %for.inc139

for.inc139:                                       ; preds = %for.cond131
  %arrayidx137 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv202, i64 %indvars.iv.next212
  %18 = load i32, ptr %arrayidx137, align 4, !tbaa !5, !invariant.load !9
  %.sroa.speculated37 = call i32 @llvm.smin.i32(i32 %18, i32 %Min.3)
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1
  br label %for.cond131, !llvm.loop !17

for.end141:                                       ; preds = %for.cond131
  %arrayidx144 = getelementptr inbounds nuw [111 x i32], ptr %arrayidx19, i64 0, i64 %indvars.iv.next212
  %19 = load i32, ptr %arrayidx144, align 4, !tbaa !5, !invariant.load !9
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %19, i32 %Min.3)
  br label %for.cond147

for.cond147:                                      ; preds = %for.inc159, %for.end141
  %indvars.iv205 = phi i64 [ %indvars.iv.next206, %for.inc159 ], [ %indvars.iv167, %for.end141 ]
  %exitcond210.not = icmp eq i64 %indvars.iv205, %wide.trip.count
  br i1 %exitcond210.not, label %for.inc169, label %for.inc159

for.inc159:                                       ; preds = %for.cond147
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1
  %arrayidx153 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv.next206, i64 %indvars.iv.next212
  %20 = load i32, ptr %arrayidx153, align 4, !tbaa !5
  %sub154 = sub nsw i32 %20, %.sroa.speculated
  store i32 %sub154, ptr %arrayidx153, align 4, !tbaa !5
  br label %for.cond147, !llvm.loop !18

for.inc169:                                       ; preds = %for.cond147
  %sub165 = sub nsw i32 %19, %.sroa.speculated
  store i32 %sub165, ptr %arrayidx144, align 4, !tbaa !5
  br label %for.cond127, !llvm.loop !19

for.end171:                                       ; preds = %for.cond127
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1
  %arrayidx177 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv.next168, i64 %indvars.iv.next168
  %21 = load i32, ptr %arrayidx177, align 4, !tbaa !5, !invariant.load !9
  %add178 = add nsw i32 %21, %sum.0
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1
  br label %for.cond13

for.end181:                                       ; preds = %for.cond13
  %call182 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %call183 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call182, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc.i.i23 = add nuw nsw i32 %i.0, 1
  br label %for.cond

for.end186:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 49284, ptr noundef nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}
!19 = distinct !{!19, !11, !12}
