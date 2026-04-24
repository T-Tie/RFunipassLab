; ModuleID = '<stdin>'
source_filename = "/tmp/tmpv1yohbld.cpp"
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
  %a = alloca [101 x [101 x i32]], align 16
  %b = alloca [101 x [101 x i32]], align 16
  %c = alloca [101 x [101 x i32]], align 16
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 40804, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 40804, ptr noundef nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 noundef 40804, ptr noundef nonnull %c) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x2) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y2) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.inc8 ], [ 1, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv35, %1
  br i1 %cmp.not, label %for.end10, label %for.cond2

for.cond2:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %for.cond ]
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp3.not = icmp sgt i64 %indvars.iv, %3
  br i1 %cmp3.not, label %for.inc8, label %for.inc

for.inc:                                          ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv35, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond2
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc27, %for.end10
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %for.inc27 ], [ 1, %for.end10 ]
  %4 = load i32, ptr %x2, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp14.not = icmp sgt i64 %indvars.iv41, %5
  br i1 %cmp14.not, label %for.cond30.preheader, label %for.cond16

for.cond30.preheader:                             ; preds = %for.cond13
  %6 = load i32, ptr %x1, align 4, !tbaa !5
  %7 = load i32, ptr %y2, align 4
  %8 = load i32, ptr %y1, align 4
  %smax = call i32 @llvm.smax.i32(i32 %8, i32 noundef 0)
  %9 = add nuw i32 %smax, 1
  %smax50 = call i32 @llvm.smax.i32(i32 %7, i32 noundef 0)
  %10 = add nuw i32 %smax50, 1
  %smax56 = call i32 @llvm.smax.i32(i32 %6, i32 noundef 0)
  %11 = add nuw i32 %smax56, 1
  %wide.trip.count57 = zext i32 %11 to i64
  %wide.trip.count51 = zext i32 %10 to i64
  %wide.trip.count = zext i32 %9 to i64
  br label %for.cond30

for.cond16:                                       ; preds = %for.cond13, %for.inc24
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.inc24 ], [ 1, %for.cond13 ]
  %12 = load i32, ptr %y2, align 4, !tbaa !5
  %13 = sext i32 %12 to i64
  %cmp17.not = icmp sgt i64 %indvars.iv38, %13
  br i1 %cmp17.not, label %for.inc27, label %for.inc24

for.inc24:                                        ; preds = %for.cond16
  %arrayidx22 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv41, i64 %indvars.iv38
  %call23 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx22)
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond16, !llvm.loop !13

for.inc27:                                        ; preds = %for.cond16
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond13, !llvm.loop !14

for.cond30:                                       ; preds = %for.cond30.preheader, %for.inc65
  %indvars.iv53 = phi i64 [ 1, %for.cond30.preheader ], [ %indvars.iv.next54, %for.inc65 ]
  %exitcond58 = icmp eq i64 %indvars.iv53, %wide.trip.count57
  br i1 %exitcond58, label %for.cond68, label %for.cond33

for.cond33:                                       ; preds = %for.cond30, %for.inc62
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %for.inc62 ], [ 1, %for.cond30 ]
  %exitcond52 = icmp eq i64 %indvars.iv47, %wide.trip.count51
  br i1 %exitcond52, label %for.inc65, label %for.body35

for.body35:                                       ; preds = %for.cond33
  %arrayidx39 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv53, i64 %indvars.iv47
  store i32 0, ptr %arrayidx39, align 4, !tbaa !5
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc59, %for.body35
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.inc59 ], [ 1, %for.body35 ]
  %exitcond = icmp eq i64 %indvars.iv44, %wide.trip.count
  br i1 %exitcond, label %for.inc62, label %for.inc59

for.inc59:                                        ; preds = %for.cond40
  %arrayidx46 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv53, i64 %indvars.iv44
  %14 = load i32, ptr %arrayidx46, align 4, !tbaa !5, !invariant.load !15
  %arrayidx50 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv44, i64 %indvars.iv47
  %15 = load i32, ptr %arrayidx50, align 4, !tbaa !5, !invariant.load !15
  %mul = mul nsw i32 %15, %14
  store i32 %mul, ptr %arrayidx39, align 4, !tbaa !5
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  br label %for.cond40, !llvm.loop !16

for.inc62:                                        ; preds = %for.cond40
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br label %for.cond33, !llvm.loop !17

for.inc65:                                        ; preds = %for.cond33
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %for.cond30, !llvm.loop !18

for.cond68:                                       ; preds = %for.cond30, %for.inc90
  %16 = phi i32 [ %19, %for.inc90 ], [ %7, %for.cond30 ]
  %17 = phi i32 [ %.pre, %for.inc90 ], [ %6, %for.cond30 ]
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %for.inc90 ], [ 1, %for.cond30 ]
  %18 = sext i32 %17 to i64
  %cmp69.not = icmp sgt i64 %indvars.iv62, %18
  br i1 %cmp69.not, label %for.end92, label %for.cond71

for.cond71:                                       ; preds = %for.cond68, %for.inc87
  %19 = phi i32 [ %.pre65, %for.inc87 ], [ %16, %for.cond68 ]
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %for.inc87 ], [ 1, %for.cond68 ]
  %20 = sext i32 %19 to i64
  %cmp72.not = icmp sgt i64 %indvars.iv59, %20
  br i1 %cmp72.not, label %for.inc90, label %for.body73

for.body73:                                       ; preds = %for.cond71
  %21 = zext i32 %19 to i64
  %cmp74.not = icmp eq i64 %indvars.iv59, %21
  %22 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv62, i64 %indvars.iv59
  %23 = load i32, ptr %22, align 4, !tbaa !5, !invariant.load !15
  %call85 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %23)
  br i1 %cmp74.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body73
  %call80 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call85, ptr noundef nonnull @.str)
  br label %for.inc87

if.else:                                          ; preds = %for.body73
  %call86 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call85, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc87

for.inc87:                                        ; preds = %if.then, %if.else
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  %.pre65 = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.cond71, !llvm.loop !19

for.inc90:                                        ; preds = %for.cond71
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond68, !llvm.loop !20

for.end92:                                        ; preds = %for.cond68
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y1) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x1) #7
  call void @llvm.lifetime.end.p0(i64 noundef 40804, ptr noundef nonnull %c) #7
  call void @llvm.lifetime.end.p0(i64 noundef 40804, ptr noundef nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 40804, ptr noundef nonnull %a) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind willreturn }
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
!15 = !{}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
