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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 49284, ptr nonnull %a) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %a, i64 444
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %a, i64 448
  br label %for.cond

for.cond:                                         ; preds = %for.end181, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc185, %for.end181 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %i.0, %0
  br i1 %cmp.not, label %for.end186, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %3, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv139 = phi i64 [ %indvars.iv.next140, %for.inc10 ], [ 1, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2.not = icmp sgt i64 %indvars.iv139, %2
  br i1 %cmp2.not, label %for.cond13.preheader, label %for.cond4

for.cond13.preheader:                             ; preds = %for.cond1
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond13

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %3 = phi i32 [ %.pre, %for.body6 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 1, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp5.not = icmp sgt i64 %indvars.iv, %4
  br i1 %cmp5.not, label %for.inc10, label %for.body6

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv139, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1
  br label %for.cond1, !llvm.loop !12

for.cond13:                                       ; preds = %for.cond13.preheader, %for.end171
  %indvars.iv174 = phi i64 [ 1, %for.cond13.preheader ], [ %indvars.iv.next175, %for.end171 ]
  %indvars.iv142 = phi i64 [ 2, %for.cond13.preheader ], [ %indvars.iv.next143, %for.end171 ]
  %sum.0 = phi i32 [ 0, %for.cond13.preheader ], [ %add178, %for.end171 ]
  %exitcond.not = icmp eq i64 %indvars.iv174, %wide.trip.count
  br i1 %exitcond.not, label %for.end181, label %for.cond16

for.cond16:                                       ; preds = %for.cond13, %for.body18
  %indvars.iv144 = phi i64 [ %indvars.iv.next145, %for.body18 ], [ %indvars.iv142, %for.cond13 ]
  %Min.0 = phi i32 [ %.sroa.speculated114, %for.body18 ], [ 10000, %for.cond13 ]
  %5 = trunc nuw i64 %indvars.iv144 to i32
  %cmp17.not = icmp slt i32 %1, %5
  br i1 %cmp17.not, label %for.end25, label %for.body18

for.body18:                                       ; preds = %for.cond16
  %arrayidx21 = getelementptr inbounds nuw [111 x i32], ptr %arrayidx19, i64 0, i64 %indvars.iv144
  %6 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %.sroa.speculated114 = call i32 @llvm.smin.i32(i32 %6, i32 %Min.0)
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1
  br label %for.cond16, !llvm.loop !13

for.end25:                                        ; preds = %for.cond16
  %7 = load i32, ptr %arrayidx27, align 16, !tbaa !5
  %.sroa.speculated111 = call i32 @llvm.smin.i32(i32 %7, i32 %Min.0)
  br label %for.cond30

for.cond30:                                       ; preds = %for.body32, %for.end25
  %indvars.iv147 = phi i64 [ %indvars.iv.next148, %for.body32 ], [ %indvars.iv142, %for.end25 ]
  %8 = trunc nuw i64 %indvars.iv147 to i32
  %cmp31.not = icmp slt i32 %1, %8
  br i1 %cmp31.not, label %for.end41, label %for.body32

for.body32:                                       ; preds = %for.cond30
  %arrayidx35 = getelementptr inbounds nuw [111 x i32], ptr %arrayidx19, i64 0, i64 %indvars.iv147
  %9 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %sub = sub nsw i32 %9, %.sroa.speculated111
  store i32 %sub, ptr %arrayidx35, align 4, !tbaa !5
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1
  br label %for.cond30, !llvm.loop !14

for.end41:                                        ; preds = %for.cond30
  %10 = load i32, ptr %arrayidx27, align 16, !tbaa !5
  %sub44 = sub nsw i32 %10, %.sroa.speculated111
  store i32 %sub44, ptr %arrayidx27, align 16, !tbaa !5
  br label %for.cond48

for.cond48:                                       ; preds = %for.end82, %for.end41
  %indvars.iv156 = phi i64 [ %indvars.iv.next157, %for.end82 ], [ %indvars.iv142, %for.end41 ]
  %11 = trunc nuw i64 %indvars.iv156 to i32
  %cmp49.not = icmp slt i32 %1, %11
  br i1 %cmp49.not, label %for.cond94, label %for.cond52

for.cond52:                                       ; preds = %for.cond48, %for.body54
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %for.body54 ], [ %indvars.iv142, %for.cond48 ]
  %Min.1 = phi i32 [ %.sroa.speculated108, %for.body54 ], [ 10000, %for.cond48 ]
  %12 = trunc nuw i64 %indvars.iv150 to i32
  %cmp53.not = icmp slt i32 %1, %12
  br i1 %cmp53.not, label %for.end62, label %for.body54

for.body54:                                       ; preds = %for.cond52
  %arrayidx58 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv156, i64 %indvars.iv150
  %13 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %.sroa.speculated108 = call i32 @llvm.smin.i32(i32 %13, i32 %Min.1)
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1
  br label %for.cond52, !llvm.loop !15

for.end62:                                        ; preds = %for.cond52
  %arrayidx65 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv156, i64 1
  %14 = load i32, ptr %arrayidx65, align 4, !tbaa !5
  %.sroa.speculated105 = call i32 @llvm.smin.i32(i32 %14, i32 %Min.1)
  br label %for.cond68

for.cond68:                                       ; preds = %for.body70, %for.end62
  %indvars.iv153 = phi i64 [ %indvars.iv.next154, %for.body70 ], [ %indvars.iv142, %for.end62 ]
  %15 = trunc nuw i64 %indvars.iv153 to i32
  %cmp69.not = icmp slt i32 %1, %15
  br i1 %cmp69.not, label %for.end82, label %for.body70

for.body70:                                       ; preds = %for.cond68
  %arrayidx74 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv156, i64 %indvars.iv153
  %16 = load i32, ptr %arrayidx74, align 4, !tbaa !5
  %sub75 = sub nsw i32 %16, %.sroa.speculated105
  store i32 %sub75, ptr %arrayidx74, align 4, !tbaa !5
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1
  br label %for.cond68, !llvm.loop !16

for.end82:                                        ; preds = %for.cond68
  %17 = load i32, ptr %arrayidx65, align 4, !tbaa !5
  %sub86 = sub nsw i32 %17, %.sroa.speculated105
  store i32 %sub86, ptr %arrayidx65, align 4, !tbaa !5
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1
  br label %for.cond48, !llvm.loop !17

for.cond94:                                       ; preds = %for.cond48, %for.body96
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %for.body96 ], [ %indvars.iv142, %for.cond48 ]
  %Min.2 = phi i32 [ %.sroa.speculated102, %for.body96 ], [ 10000, %for.cond48 ]
  %18 = trunc nuw i64 %indvars.iv159 to i32
  %cmp95.not = icmp slt i32 %1, %18
  br i1 %cmp95.not, label %for.end103, label %for.body96

for.body96:                                       ; preds = %for.cond94
  %arrayidx99 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv159, i64 1
  %19 = load i32, ptr %arrayidx99, align 4, !tbaa !5
  %.sroa.speculated102 = call i32 @llvm.smin.i32(i32 %19, i32 %Min.2)
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1
  br label %for.cond94, !llvm.loop !18

for.end103:                                       ; preds = %for.cond94
  %20 = load i32, ptr %arrayidx27, align 16, !tbaa !5
  %.sroa.speculated99 = call i32 @llvm.smin.i32(i32 %20, i32 %Min.2)
  br label %for.cond108

for.cond108:                                      ; preds = %for.body110, %for.end103
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %for.body110 ], [ %indvars.iv142, %for.end103 ]
  %21 = trunc nuw i64 %indvars.iv162 to i32
  %cmp109.not = icmp slt i32 %1, %21
  br i1 %cmp109.not, label %for.end120, label %for.body110

for.body110:                                      ; preds = %for.cond108
  %arrayidx113 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv162, i64 1
  %22 = load i32, ptr %arrayidx113, align 4, !tbaa !5
  %sub114 = sub nsw i32 %22, %.sroa.speculated99
  store i32 %sub114, ptr %arrayidx113, align 4, !tbaa !5
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1
  br label %for.cond108, !llvm.loop !19

for.end120:                                       ; preds = %for.cond108
  %23 = load i32, ptr %arrayidx27, align 16, !tbaa !5
  %sub123 = sub nsw i32 %23, %.sroa.speculated99
  store i32 %sub123, ptr %arrayidx27, align 16, !tbaa !5
  br label %for.cond127

for.cond127:                                      ; preds = %for.end161, %for.end120
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %for.end161 ], [ %indvars.iv142, %for.end120 ]
  %24 = trunc nuw i64 %indvars.iv171 to i32
  %cmp128.not = icmp slt i32 %1, %24
  br i1 %cmp128.not, label %for.end171, label %for.cond131

for.cond131:                                      ; preds = %for.cond127, %for.body133
  %indvars.iv165 = phi i64 [ %indvars.iv.next166, %for.body133 ], [ %indvars.iv142, %for.cond127 ]
  %Min.3 = phi i32 [ %.sroa.speculated96, %for.body133 ], [ 10000, %for.cond127 ]
  %25 = trunc nuw i64 %indvars.iv165 to i32
  %cmp132.not = icmp slt i32 %1, %25
  br i1 %cmp132.not, label %for.end141, label %for.body133

for.body133:                                      ; preds = %for.cond131
  %arrayidx137 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv165, i64 %indvars.iv171
  %26 = load i32, ptr %arrayidx137, align 4, !tbaa !5
  %.sroa.speculated96 = call i32 @llvm.smin.i32(i32 %26, i32 %Min.3)
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1
  br label %for.cond131, !llvm.loop !20

for.end141:                                       ; preds = %for.cond131
  %arrayidx144 = getelementptr inbounds nuw [111 x i32], ptr %arrayidx19, i64 0, i64 %indvars.iv171
  %27 = load i32, ptr %arrayidx144, align 4, !tbaa !5
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %27, i32 %Min.3)
  br label %for.cond147

for.cond147:                                      ; preds = %for.body149, %for.end141
  %indvars.iv168 = phi i64 [ %indvars.iv.next169, %for.body149 ], [ %indvars.iv142, %for.end141 ]
  %28 = trunc nuw i64 %indvars.iv168 to i32
  %cmp148.not = icmp slt i32 %1, %28
  br i1 %cmp148.not, label %for.end161, label %for.body149

for.body149:                                      ; preds = %for.cond147
  %arrayidx153 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv168, i64 %indvars.iv171
  %29 = load i32, ptr %arrayidx153, align 4, !tbaa !5
  %sub154 = sub nsw i32 %29, %.sroa.speculated
  store i32 %sub154, ptr %arrayidx153, align 4, !tbaa !5
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1
  br label %for.cond147, !llvm.loop !21

for.end161:                                       ; preds = %for.cond147
  %30 = load i32, ptr %arrayidx144, align 4, !tbaa !5
  %sub165 = sub nsw i32 %30, %.sroa.speculated
  store i32 %sub165, ptr %arrayidx144, align 4, !tbaa !5
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1
  br label %for.cond127, !llvm.loop !22

for.end171:                                       ; preds = %for.cond127
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1
  %arrayidx177 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv.next175, i64 %indvars.iv.next175
  %31 = load i32, ptr %arrayidx177, align 4, !tbaa !5
  %add178 = add nsw i32 %31, %sum.0
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1
  br label %for.cond13, !llvm.loop !23

for.end181:                                       ; preds = %for.cond13
  %call182 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %vtable.i = load ptr, ptr %call182, align 8, !tbaa !24
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call182, i64 %vbase.offset.i
  %call.i78 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call182, i8 noundef signext %call.i78)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc185 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !26

for.end186:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 49284, ptr nonnull %a) #5
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

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
