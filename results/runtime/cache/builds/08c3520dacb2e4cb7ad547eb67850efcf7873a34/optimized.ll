; ModuleID = '<stdin>'
source_filename = "/tmp/tmpnjafe3j3.cpp"
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
  %shuzu = alloca [1002 x [1002 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4016016, ptr noundef nonnull %shuzu) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = phi i32 [ %4, %for.inc7 ], [ %.pre, %entry ]
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %for.inc7 ], [ 1, %entry ]
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv41, %1
  br i1 %cmp.not, label %for.cond10.preheader, label %for.cond1

for.cond10.preheader:                             ; preds = %for.cond
  %2 = add i32 %0, 1
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %3 = add nuw i32 %smax, 1
  %wide.trip.count55 = zext i32 %3 to i64
  %wide.trip.count = zext i32 %2 to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.inc
  %4 = phi i32 [ %.pre57, %for.inc ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %for.cond ]
  %5 = sext i32 %4 to i64
  %cmp2.not = icmp sgt i64 %indvars.iv, %5
  br i1 %cmp2.not, label %for.inc7, label %for.inc

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [1002 x [1002 x i32]], ptr %shuzu, i64 0, i64 %indvars.iv41, i64 %indvars.iv
  %call6 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre57 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond13, %for.cond10.preheader
  %indvars.iv50 = phi i64 [ 1, %for.cond10.preheader ], [ %indvars.iv.next51, %for.cond13 ]
  %x1.0 = phi i32 [ undef, %for.cond10.preheader ], [ %x1.1, %for.cond13 ]
  %y1.0 = phi i32 [ undef, %for.cond10.preheader ], [ %y1.1, %for.cond13 ]
  %x2.0 = phi i32 [ undef, %for.cond10.preheader ], [ %x2.1, %for.cond13 ]
  %y2.0 = phi i32 [ undef, %for.cond10.preheader ], [ %y2.1, %for.cond13 ]
  %exitcond56 = icmp eq i64 %indvars.iv50, %wide.trip.count55
  br i1 %exitcond56, label %for.end58, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond10
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  %6 = add nsw i64 %indvars.iv50, -1
  %7 = trunc nuw nsw i64 %indvars.iv50 to i32
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc53
  %indvars.iv44 = phi i64 [ 1, %for.cond13.preheader ], [ %9, %for.inc53 ]
  %x1.1 = phi i32 [ %x1.0, %for.cond13.preheader ], [ %x1.231, %for.inc53 ]
  %y1.1 = phi i32 [ %y1.0, %for.cond13.preheader ], [ %y1.233, %for.inc53 ]
  %x2.1 = phi i32 [ %x2.0, %for.cond13.preheader ], [ %x2.2, %for.inc53 ]
  %y2.1 = phi i32 [ %y2.0, %for.cond13.preheader ], [ %y2.2, %for.inc53 ]
  %exitcond = icmp eq i64 %indvars.iv44, %wide.trip.count
  br i1 %exitcond, label %for.cond10, label %for.body15, !llvm.loop !13

for.body15:                                       ; preds = %for.cond13
  %arrayidx19 = getelementptr inbounds nuw [1002 x [1002 x i32]], ptr %shuzu, i64 0, i64 %indvars.iv50, i64 %indvars.iv44
  %8 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %8, 0
  %9 = add nuw nsw i64 %indvars.iv44, 1
  br i1 %cmp20, label %land.lhs.true, label %for.inc53

land.lhs.true:                                    ; preds = %for.body15
  %arrayidx24 = getelementptr inbounds nuw [1002 x [1002 x i32]], ptr %shuzu, i64 0, i64 %indvars.iv50, i64 %9
  %10 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %cmp25 = icmp eq i32 %10, 0
  br i1 %cmp25, label %land.lhs.true26, label %land.lhs.true38

land.lhs.true26:                                  ; preds = %land.lhs.true
  %arrayidx31 = getelementptr inbounds nuw [1002 x [1002 x i32]], ptr %shuzu, i64 0, i64 %indvars.iv.next51, i64 %indvars.iv44
  %11 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %cmp32 = icmp eq i32 %11, 0
  %spec.select = select i1 %cmp32, i32 %7, i32 %x1.1
  %12 = trunc nuw nsw i64 %indvars.iv44 to i32
  %spec.select35 = select i1 %cmp32, i32 %12, i32 %y1.1
  br label %land.lhs.true38

land.lhs.true38:                                  ; preds = %land.lhs.true26, %land.lhs.true
  %x1.2.ph = phi i32 [ %x1.1, %land.lhs.true ], [ %spec.select, %land.lhs.true26 ]
  %y1.2.ph = phi i32 [ %y1.1, %land.lhs.true ], [ %spec.select35, %land.lhs.true26 ]
  %13 = add nsw i64 %indvars.iv44, -1
  %arrayidx42 = getelementptr inbounds [1002 x [1002 x i32]], ptr %shuzu, i64 0, i64 %indvars.iv50, i64 %13
  %14 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %cmp43 = icmp eq i32 %14, 0
  br i1 %cmp43, label %land.lhs.true44, label %for.inc53

land.lhs.true44:                                  ; preds = %land.lhs.true38
  %arrayidx49 = getelementptr inbounds [1002 x [1002 x i32]], ptr %shuzu, i64 0, i64 %6, i64 %indvars.iv44
  %15 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %cmp50 = icmp eq i32 %15, 0
  %spec.select36 = select i1 %cmp50, i32 %7, i32 %x2.1
  %16 = trunc nuw nsw i64 %indvars.iv44 to i32
  %spec.select37 = select i1 %cmp50, i32 %16, i32 %y2.1
  br label %for.inc53

for.inc53:                                        ; preds = %for.body15, %land.lhs.true44, %land.lhs.true38
  %y1.233 = phi i32 [ %y1.2.ph, %land.lhs.true44 ], [ %y1.2.ph, %land.lhs.true38 ], [ %y1.1, %for.body15 ]
  %x1.231 = phi i32 [ %x1.2.ph, %land.lhs.true44 ], [ %x1.2.ph, %land.lhs.true38 ], [ %x1.1, %for.body15 ]
  %x2.2 = phi i32 [ %spec.select36, %land.lhs.true44 ], [ %x2.1, %land.lhs.true38 ], [ %x2.1, %for.body15 ]
  %y2.2 = phi i32 [ %spec.select37, %land.lhs.true44 ], [ %y2.1, %land.lhs.true38 ], [ %y2.1, %for.body15 ]
  br label %for.cond13, !llvm.loop !14

for.end58:                                        ; preds = %for.cond10
  %reass.sub66 = sub i32 %x2.0, %x1.0
  %add60 = add i32 %reass.sub66, 1
  %sub61 = sub nsw i32 %y2.0, %y1.0
  %mul6538 = add i32 %sub61, -1
  %sub66 = mul i32 %mul6538, %add60
  %17 = shl i32 %sub61, 1
  %reass.sub68 = sub i32 %sub66, %17
  %add71 = add i32 %reass.sub68, 2
  %call72 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %add71)
  %call73 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call72, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4016016, ptr noundef nonnull %shuzu) #7
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
