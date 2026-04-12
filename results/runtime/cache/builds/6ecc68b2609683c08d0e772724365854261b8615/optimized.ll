; ModuleID = '<stdin>'
source_filename = "/tmp/tmpy6_3z0_w.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%d+%d\0A\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %m) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %m, ptr noundef nonnull align 4 %n)
  %0 = load i32, ptr %m, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %3 = zext i32 %2 to i64
  %4 = call ptr @llvm.stacksave.p0()
  %5 = mul nuw i64 %3, %1
  %vla = alloca i32, i64 %5, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.inc8 ], [ 0, %entry ]
  %6 = load i32, ptr %m, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp = icmp slt i64 %indvars.iv18, %7
  br i1 %cmp, label %for.cond1.preheader, label %for.end10

for.cond1.preheader:                              ; preds = %for.cond
  %8 = mul nuw nsw i64 %indvars.iv18, %3
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %8
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc ]
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %10 = sext i32 %9 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %10
  br i1 %cmp2, label %for.inc, label %for.inc8

for.inc:                                          ; preds = %for.cond1
  %arrayidx6 = getelementptr inbounds nuw i32, ptr %arrayidx, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond1
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %11 = zext i32 %6 to i64
  %12 = load i32, ptr %n, align 4, !tbaa !5
  %13 = zext i32 %12 to i64
  %14 = mul nuw i64 %13, %11
  %vla11 = alloca i32, i64 %14, align 16
  %smax = call i32 @llvm.smax.i32(i32 %12, i32 noundef 0)
  %smax28 = call i32 @llvm.smax.i32(i32 %6, i32 noundef 0)
  %wide.trip.count29 = zext nneg i32 %smax28 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc29, %for.end10
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.inc29 ], [ 0, %for.end10 ]
  %exitcond30.not = icmp eq i64 %indvars.iv24, %wide.trip.count29
  br i1 %exitcond30.not, label %for.cond33.preheader, label %for.cond18.preheader

for.cond33.preheader:                             ; preds = %for.cond13
  %smax34 = call i32 @llvm.smax.i32(i32 %12, i32 noundef 1)
  %wide.trip.count35 = zext nneg i32 %smax34 to i64
  br label %for.cond33

for.cond18.preheader:                             ; preds = %for.cond13
  %15 = mul nuw nsw i64 %indvars.iv24, %13
  %arrayidx23 = getelementptr inbounds nuw i32, ptr %vla11, i64 %15
  br label %for.cond18

for.cond18:                                       ; preds = %for.cond18.preheader, %for.inc26
  %indvars.iv21 = phi i64 [ 0, %for.cond18.preheader ], [ %indvars.iv.next22, %for.inc26 ]
  %exitcond.not = icmp eq i64 %indvars.iv21, %wide.trip.count
  br i1 %exitcond.not, label %for.inc29, label %for.inc26

for.inc26:                                        ; preds = %for.cond18
  %arrayidx25 = getelementptr inbounds nuw i32, ptr %arrayidx23, i64 %indvars.iv21
  store i32 0, ptr %arrayidx25, align 4, !tbaa !5
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond18, !llvm.loop !13

for.inc29:                                        ; preds = %for.cond18
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  br label %for.cond13, !llvm.loop !14

for.cond33:                                       ; preds = %for.cond33.preheader, %for.inc64
  %indvars.iv37 = phi i64 [ 0, %for.cond33.preheader ], [ %indvars.iv.next38, %for.inc64 ]
  %exitcond41.not = icmp eq i64 %indvars.iv37, %wide.trip.count29
  br i1 %exitcond41.not, label %for.cond68.preheader, label %for.cond38.preheader

for.cond68.preheader:                             ; preds = %for.cond33
  %smax46 = call i32 @llvm.smax.i32(i32 %6, i32 noundef 1)
  %wide.trip.count47 = zext nneg i32 %smax46 to i64
  br label %for.cond68

for.cond38.preheader:                             ; preds = %for.cond33
  %16 = mul nuw nsw i64 %indvars.iv37, %3
  %arrayidx43 = getelementptr inbounds nuw i32, ptr %vla, i64 %16
  %17 = mul nuw nsw i64 %indvars.iv37, %13
  %arrayidx57 = getelementptr inbounds nuw i32, ptr %vla11, i64 %17
  br label %for.cond38

for.cond38:                                       ; preds = %for.cond38.preheader, %for.body41
  %indvars.iv31 = phi i64 [ 1, %for.cond38.preheader ], [ %indvars.iv.next32, %for.body41 ]
  %t.0 = phi i32 [ 0, %for.cond38.preheader ], [ %spec.select6, %for.body41 ]
  %exitcond36.not = icmp eq i64 %indvars.iv31, %wide.trip.count35
  br i1 %exitcond36.not, label %for.inc64, label %for.body41

for.body41:                                       ; preds = %for.cond38
  %arrayidx45 = getelementptr inbounds nuw i32, ptr %arrayidx43, i64 %indvars.iv31
  %18 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %idxprom48 = zext nneg i32 %t.0 to i64
  %arrayidx49 = getelementptr inbounds nuw i32, ptr %arrayidx43, i64 %idxprom48
  %19 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %cmp50 = icmp sgt i32 %18, %19
  %20 = trunc nuw nsw i64 %indvars.iv31 to i32
  %spec.select = select i1 %cmp50, i32 %t.0, i32 %20
  %spec.select6 = select i1 %cmp50, i32 %20, i32 %t.0
  %idxprom58 = zext nneg i32 %spec.select to i64
  %arrayidx59 = getelementptr inbounds nuw i32, ptr %arrayidx57, i64 %idxprom58
  %21 = load i32, ptr %arrayidx59, align 4, !tbaa !5, !invariant.load !15
  %inc60 = add nsw i32 %21, 1
  store i32 %inc60, ptr %arrayidx59, align 4, !tbaa !5
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  br label %for.cond38, !llvm.loop !16

for.inc64:                                        ; preds = %for.cond38
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond33, !llvm.loop !17

for.cond68:                                       ; preds = %for.cond68.preheader, %for.inc102
  %indvars.iv49 = phi i64 [ 0, %for.cond68.preheader ], [ %indvars.iv.next50, %for.inc102 ]
  %exitcond53.not = icmp eq i64 %indvars.iv49, %wide.trip.count
  br i1 %exitcond53.not, label %for.cond106, label %for.cond73.preheader

for.cond73.preheader:                             ; preds = %for.cond68
  %invariant.gep = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv49
  %invariant.gep13 = getelementptr inbounds nuw i32, ptr %vla11, i64 %indvars.iv49
  br label %for.cond73

for.cond73:                                       ; preds = %for.cond73.preheader, %for.body76
  %indvars.iv42 = phi i64 [ 1, %for.cond73.preheader ], [ %indvars.iv.next43, %for.body76 ]
  %t.2 = phi i32 [ 0, %for.cond73.preheader ], [ %spec.select8, %for.body76 ]
  %exitcond48.not = icmp eq i64 %indvars.iv42, %wide.trip.count47
  br i1 %exitcond48.not, label %for.inc102, label %for.body76

for.body76:                                       ; preds = %for.cond73
  %22 = mul nuw nsw i64 %indvars.iv42, %3
  %gep = getelementptr inbounds nuw i32, ptr %invariant.gep, i64 %22
  %23 = load i32, ptr %gep, align 4, !tbaa !5
  %idxprom81 = zext nneg i32 %t.2 to i64
  %24 = mul nuw nsw i64 %idxprom81, %3
  %gep12 = getelementptr inbounds nuw i32, ptr %invariant.gep, i64 %24
  %25 = load i32, ptr %gep12, align 4, !tbaa !5
  %cmp85 = icmp slt i32 %23, %25
  %26 = trunc nuw nsw i64 %indvars.iv42 to i32
  %spec.select7 = select i1 %cmp85, i32 %t.2, i32 %26
  %spec.select8 = select i1 %cmp85, i32 %26, i32 %t.2
  %idxprom93 = zext nneg i32 %spec.select7 to i64
  %27 = mul nuw nsw i64 %idxprom93, %13
  %gep14 = getelementptr inbounds nuw i32, ptr %invariant.gep13, i64 %27
  %28 = load i32, ptr %gep14, align 4, !tbaa !5, !invariant.load !15
  %inc97 = add nsw i32 %28, 1
  store i32 %inc97, ptr %gep14, align 4, !tbaa !5
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %for.cond73, !llvm.loop !18

for.inc102:                                       ; preds = %for.cond73
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %for.cond68, !llvm.loop !19

for.cond106:                                      ; preds = %for.cond68, %for.inc126
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %for.inc126 ], [ 0, %for.cond68 ]
  %exitcond65.not = icmp eq i64 %indvars.iv60, %wide.trip.count29
  br i1 %exitcond65.not, label %for.end130, label %for.cond111.preheader

for.cond111.preheader:                            ; preds = %for.cond106
  %29 = mul nuw nsw i64 %indvars.iv60, %13
  %arrayidx116 = getelementptr inbounds nuw i32, ptr %vla11, i64 %29
  br label %for.cond111

for.cond111:                                      ; preds = %for.cond111.preheader, %for.inc123
  %indvars.iv54 = phi i64 [ 0, %for.cond111.preheader ], [ %indvars.iv.next55, %for.inc123 ]
  %exitcond59.not = icmp eq i64 %indvars.iv54, %wide.trip.count
  br i1 %exitcond59.not, label %for.inc126, label %for.body114

for.body114:                                      ; preds = %for.cond111
  %arrayidx118 = getelementptr inbounds nuw i32, ptr %arrayidx116, i64 %indvars.iv54
  %30 = load i32, ptr %arrayidx118, align 4, !tbaa !5
  %cmp119 = icmp eq i32 %30, 0
  br i1 %cmp119, label %cleanup128, label %for.inc123

for.inc123:                                       ; preds = %for.body114
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %for.cond111, !llvm.loop !20

for.inc126:                                       ; preds = %for.cond111
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  br label %for.cond106, !llvm.loop !21

cleanup128:                                       ; preds = %for.body114
  %31 = trunc nuw nsw i64 %indvars.iv60 to i32
  %32 = trunc nuw nsw i64 %indvars.iv54 to i32
  %call121 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %31, i32 noundef %32)
  br label %cleanup133

for.end130:                                       ; preds = %for.cond106
  %call131 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2)
  %call132 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call131, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %cleanup133

cleanup133:                                       ; preds = %for.end130, %cleanup128
  call void @llvm.stackrestore.p0(ptr %4)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind willreturn }
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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = !{}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
