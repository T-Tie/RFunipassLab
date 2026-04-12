; ModuleID = '<stdin>'
source_filename = "/tmp/tmpvdu28c3q.cpp"
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
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %b = alloca [100 x [100 x i32]], align 16
  %c = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x1) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y1) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x2) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y2) #7
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %a) #7
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %b) #7
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %c) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv13 = phi i64 [ %indvars.iv.next14, %for.end ], [ 0, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.cond2, label %for.end11

for.cond2:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %1 = load i32, ptr %y1, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp3 = icmp slt i64 %indvars.iv, %2
  br i1 %cmp3, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond2
  %arrayidx7 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv13, i64 %indvars.iv
  %call8 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx7)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.end:                                          ; preds = %for.cond2
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  br label %for.cond

for.end11:                                        ; preds = %for.cond
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call13 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call12, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  br label %for.cond14

for.cond14:                                       ; preds = %for.end29, %for.end11
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.end29 ], [ 0, %for.end11 ]
  %3 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp15 = icmp sgt i32 %3, 0
  br i1 %cmp15, label %for.cond18, label %for.cond33.preheader

for.cond33.preheader:                             ; preds = %for.cond14
  %4 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp34 = icmp sgt i32 %4, 0
  br i1 %cmp34, label %for.cond33.preheader11, label %for.cond70

for.cond33.preheader11:                           ; preds = %for.cond33.preheader
  %5 = load i32, ptr %y1, align 4
  %6 = load i32, ptr %y2, align 4
  %smax = call i32 @llvm.smax.i32(i32 %5, i32 0)
  %smax34 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %wide.trip.count35 = zext nneg i32 %smax34 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond33

for.cond18:                                       ; preds = %for.cond14, %for.inc27
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for.inc27 ], [ 0, %for.cond14 ]
  %7 = load i32, ptr %y2, align 4, !tbaa !5
  %8 = sext i32 %7 to i64
  %cmp19 = icmp slt i64 %indvars.iv16, %8
  br i1 %cmp19, label %for.inc27, label %for.end29

for.inc27:                                        ; preds = %for.cond18
  %arrayidx25 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv19, i64 %indvars.iv16
  %call26 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx25)
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond18, !llvm.loop !12

for.end29:                                        ; preds = %for.cond18
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond14

for.cond33:                                       ; preds = %for.cond33.preheader11, %for.end66
  %indvars.iv37 = phi i64 [ 0, %for.cond33.preheader11 ], [ %indvars.iv.next38, %for.end66 ]
  br label %for.cond37

for.cond37:                                       ; preds = %for.cond33, %for.inc64
  %indvars.iv31 = phi i64 [ 0, %for.cond33 ], [ %indvars.iv.next32, %for.inc64 ]
  %exitcond36.not = icmp eq i64 %indvars.iv31, %wide.trip.count35
  br i1 %exitcond36.not, label %for.end66, label %for.body40

for.body40:                                       ; preds = %for.cond37
  %arrayidx44 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv37, i64 %indvars.iv31
  store i32 0, ptr %arrayidx44, align 4, !tbaa !5
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc61, %for.body40
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.inc61 ], [ 0, %for.body40 ]
  %exitcond.not = icmp eq i64 %indvars.iv28, %wide.trip.count
  br i1 %exitcond.not, label %for.inc64, label %for.inc61

for.inc61:                                        ; preds = %for.cond45
  %arrayidx52 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv37, i64 %indvars.iv28
  %9 = load i32, ptr %arrayidx52, align 4, !tbaa !5, !invariant.load !13
  %arrayidx56 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv28, i64 %indvars.iv31
  %10 = load i32, ptr %arrayidx56, align 4, !tbaa !5, !invariant.load !13
  %mul = mul nsw i32 %10, %9
  store i32 %mul, ptr %arrayidx44, align 4, !tbaa !5
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond45, !llvm.loop !14

for.inc64:                                        ; preds = %for.cond45
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  br label %for.cond37, !llvm.loop !15

for.end66:                                        ; preds = %for.cond37
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond33

for.cond70:                                       ; preds = %for.cond33.preheader, %for.end86
  %11 = phi i32 [ %.pre, %for.end86 ], [ %4, %for.cond33.preheader ]
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %for.end86 ], [ 0, %for.cond33.preheader ]
  %cmp71 = icmp sgt i32 %11, 0
  br i1 %cmp71, label %for.cond74, label %for.end96

for.cond74:                                       ; preds = %for.cond70, %for.body77
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.body77 ], [ 0, %for.cond70 ]
  %12 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp75 = icmp sgt i32 %12, 1
  br i1 %cmp75, label %for.body77, label %for.end86

for.body77:                                       ; preds = %for.cond74
  %arrayidx81 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv25, i64 %indvars.iv22
  %13 = load i32, ptr %arrayidx81, align 4, !tbaa !5, !invariant.load !13
  %call82 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %13)
  %call83 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call82, ptr noundef nonnull @.str)
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond74

for.end86:                                        ; preds = %for.cond74
  %sub = add nsw i32 %12, -1
  %idxprom90 = sext i32 %sub to i64
  %arrayidx91 = getelementptr inbounds [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv25, i64 %idxprom90
  %14 = load i32, ptr %arrayidx91, align 4, !tbaa !5, !invariant.load !13
  %call92 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %14)
  %call93 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call92, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond70

for.end96:                                        ; preds = %for.cond70
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %c) #8
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %b) #8
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y2) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x2) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y1) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x1) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
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
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
