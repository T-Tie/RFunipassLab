; ModuleID = '<stdin>'
source_filename = "/tmp/tmp6tyn91on.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %b = alloca [100 x [100 x i32]], align 16
  %c = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x1) #8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x2) #8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y1) #8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y2) #8
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull %a) #8
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull %b) #8
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %c) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.end ], [ 0, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.cond2, label %for.end10

for.cond2:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond ]
  %1 = load i32, ptr %y1, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp3 = icmp slt i64 %indvars.iv, %2
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv37, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.end:                                          ; preds = %for.cond2
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond

for.end10:                                        ; preds = %for.cond
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  br label %for.cond13

for.cond13:                                       ; preds = %for.end26, %for.end10
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %for.end26 ], [ 0, %for.end10 ]
  %3 = load i32, ptr %x2, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp14 = icmp slt i64 %indvars.iv43, %4
  br i1 %cmp14, label %for.cond16, label %for.cond30.preheader

for.cond30.preheader:                             ; preds = %for.cond13
  %5 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp31 = icmp sgt i32 %5, 0
  br i1 %cmp31, label %for.cond30.preheader35, label %for.end65

for.cond30.preheader35:                           ; preds = %for.cond30.preheader
  %6 = load i32, ptr %y2, align 4
  %smax = call i32 @llvm.smax.i32(i32 %3, i32 0)
  %smax64 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %wide.trip.count65 = zext nneg i32 %smax64 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond30

for.cond16:                                       ; preds = %for.cond13, %for.body18
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %for.body18 ], [ 0, %for.cond13 ]
  %7 = load i32, ptr %y2, align 4, !tbaa !5
  %8 = sext i32 %7 to i64
  %cmp17 = icmp slt i64 %indvars.iv40, %8
  br i1 %cmp17, label %for.body18, label %for.end26

for.body18:                                       ; preds = %for.cond16
  %arrayidx22 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv43, i64 %indvars.iv40
  %call23 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx22)
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond16, !llvm.loop !12

for.end26:                                        ; preds = %for.cond16
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  br label %for.cond13, !llvm.loop !13

for.cond30:                                       ; preds = %for.cond30.preheader35, %for.end62
  %indvars.iv67 = phi i64 [ 0, %for.cond30.preheader35 ], [ %indvars.iv.next68, %for.end62 ]
  br label %for.cond33

for.cond33:                                       ; preds = %for.cond30, %for.end59
  %indvars.iv61 = phi i64 [ 0, %for.cond30 ], [ %indvars.iv.next62, %for.end59 ]
  %exitcond66.not = icmp eq i64 %indvars.iv61, %wide.trip.count65
  br i1 %exitcond66.not, label %for.end62, label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %for.cond33
  %arrayidx51 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv67, i64 %indvars.iv61
  br label %for.cond36

for.cond36:                                       ; preds = %for.cond36.preheader, %for.body39
  %indvars.iv55 = phi i64 [ 0, %for.cond36.preheader ], [ %indvars.iv.next56, %for.body39 ]
  %exitcond.not = icmp eq i64 %indvars.iv55, %wide.trip.count
  br i1 %exitcond.not, label %for.end59, label %for.body39

for.body39:                                       ; preds = %for.cond36
  %arrayidx43 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv67, i64 %indvars.iv55
  %9 = load i32, ptr %arrayidx43, align 4, !tbaa !5, !invariant.load !14
  %arrayidx47 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv55, i64 %indvars.iv61
  %10 = load i32, ptr %arrayidx47, align 4, !tbaa !5, !invariant.load !14
  %mul = mul nsw i32 %10, %9
  %11 = load i32, ptr %arrayidx51, align 4, !tbaa !5, !invariant.load !14
  %add = add nsw i32 %mul, %11
  store i32 %add, ptr %arrayidx51, align 4, !tbaa !5
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  br label %for.cond36, !llvm.loop !15

for.end59:                                        ; preds = %for.cond36
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  br label %for.cond33, !llvm.loop !16

for.end62:                                        ; preds = %for.cond33
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  br label %for.cond30

for.end65:                                        ; preds = %for.cond30.preheader
  %call68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 0)
  br label %for.cond69

for.cond69:                                       ; preds = %for.body71, %for.end65
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.body71 ], [ 1, %for.end65 ]
  %12 = load i32, ptr %y2, align 4, !tbaa !5
  %13 = sext i32 %12 to i64
  %cmp70 = icmp slt i64 %indvars.iv46, %13
  br i1 %cmp70, label %for.body71, label %for.cond80

for.body71:                                       ; preds = %for.cond69
  %call72 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str)
  %arrayidx75 = getelementptr inbounds nuw [100 x i32], ptr %c, i64 0, i64 %indvars.iv46
  %14 = load i32, ptr %arrayidx75, align 4, !tbaa !5, !invariant.load !14
  %call76 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call72, i32 noundef %14)
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %for.cond69, !llvm.loop !17

for.cond80:                                       ; preds = %for.cond69, %for.end99
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %for.end99 ], [ 1, %for.cond69 ]
  %15 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp81 = icmp sgt i32 %15, 1
  br i1 %cmp81, label %for.body82, label %for.end102

for.body82:                                       ; preds = %for.cond80
  %call83 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %arrayidx85 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv52
  %16 = load i32, ptr %arrayidx85, align 16, !tbaa !5, !invariant.load !14
  %call87 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %16)
  br label %for.cond88

for.cond88:                                       ; preds = %for.body90, %for.body82
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.body90 ], [ 1, %for.body82 ]
  %17 = load i32, ptr %y2, align 4, !tbaa !5
  %18 = sext i32 %17 to i64
  %cmp89 = icmp slt i64 %indvars.iv49, %18
  br i1 %cmp89, label %for.body90, label %for.end99

for.body90:                                       ; preds = %for.cond88
  %call91 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str)
  %arrayidx95 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv52, i64 %indvars.iv49
  %19 = load i32, ptr %arrayidx95, align 4, !tbaa !5, !invariant.load !14
  %call96 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call91, i32 noundef %19)
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %for.cond88, !llvm.loop !18

for.end99:                                        ; preds = %for.cond88
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  br label %for.cond80

for.end102:                                       ; preds = %for.cond80
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %c) #9
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %b) #9
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y2) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y1) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x2) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x1) #9
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }

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
!14 = !{}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
