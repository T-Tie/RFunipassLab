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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %m, ptr noundef nonnull %n)
  %0 = load i32, ptr %m, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %3 = zext i32 %2 to i64
  %4 = call ptr @llvm.stacksave.p0()
  %5 = mul nuw i64 %3, %1
  %vla = alloca i32, i64 %5, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup3, %entry
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %for.cond.cleanup3 ], [ 0, %entry ]
  %6 = load i32, ptr %m, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp = icmp slt i64 %indvars.iv54, %7
  br i1 %cmp, label %for.cond1.preheader, label %for.cond.cleanup

for.cond1.preheader:                              ; preds = %for.cond
  %8 = mul nuw nsw i64 %indvars.iv54, %3
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %8
  br label %for.cond1

for.cond.cleanup:                                 ; preds = %for.cond
  %9 = zext i32 %6 to i64
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %11 = zext i32 %10 to i64
  %12 = mul nuw i64 %11, %9
  %vla11 = alloca i32, i64 %12, align 16
  %smax = call i32 @llvm.smax.i32(i32 %10, i32 0)
  %smax64 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %wide.trip.count65 = zext nneg i32 %smax64 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond13

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body4
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body4 ]
  %13 = load i32, ptr %n, align 4, !tbaa !5
  %14 = sext i32 %13 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %14
  br i1 %cmp2, label %for.body4, label %for.cond.cleanup3

for.cond.cleanup3:                                ; preds = %for.cond1
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %for.cond, !llvm.loop !9

for.body4:                                        ; preds = %for.cond1
  %arrayidx6 = getelementptr inbounds nuw i32, ptr %arrayidx, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !12

for.cond13:                                       ; preds = %for.cond.cleanup20, %for.cond.cleanup
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %for.cond.cleanup20 ], [ 0, %for.cond.cleanup ]
  %exitcond66.not = icmp eq i64 %indvars.iv60, %wide.trip.count65
  br i1 %exitcond66.not, label %for.cond33.preheader, label %for.cond18.preheader

for.cond33.preheader:                             ; preds = %for.cond13
  %smax70 = call i32 @llvm.smax.i32(i32 %10, i32 1)
  %wide.trip.count71 = zext nneg i32 %smax70 to i64
  br label %for.cond33

for.cond18.preheader:                             ; preds = %for.cond13
  %15 = mul nuw nsw i64 %indvars.iv60, %11
  %arrayidx23 = getelementptr inbounds nuw i32, ptr %vla11, i64 %15
  br label %for.cond18

for.cond18:                                       ; preds = %for.cond18.preheader, %for.body21
  %indvars.iv57 = phi i64 [ 0, %for.cond18.preheader ], [ %indvars.iv.next58, %for.body21 ]
  %exitcond.not = icmp eq i64 %indvars.iv57, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup20, label %for.body21

for.cond.cleanup20:                               ; preds = %for.cond18
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  br label %for.cond13, !llvm.loop !13

for.body21:                                       ; preds = %for.cond18
  %arrayidx25 = getelementptr inbounds nuw i32, ptr %arrayidx23, i64 %indvars.iv57
  store i32 0, ptr %arrayidx25, align 4, !tbaa !5
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  br label %for.cond18, !llvm.loop !14

for.cond33:                                       ; preds = %for.cond33.preheader, %for.cond.cleanup40
  %indvars.iv73 = phi i64 [ 0, %for.cond33.preheader ], [ %indvars.iv.next74, %for.cond.cleanup40 ]
  %exitcond77.not = icmp eq i64 %indvars.iv73, %wide.trip.count65
  br i1 %exitcond77.not, label %for.cond68.preheader, label %for.cond38.preheader

for.cond68.preheader:                             ; preds = %for.cond33
  %smax82 = call i32 @llvm.smax.i32(i32 %6, i32 1)
  %wide.trip.count88 = zext nneg i32 %smax to i64
  %wide.trip.count83 = zext nneg i32 %smax82 to i64
  br label %for.cond68

for.cond38.preheader:                             ; preds = %for.cond33
  %16 = mul nuw nsw i64 %indvars.iv73, %3
  %arrayidx43 = getelementptr inbounds nuw i32, ptr %vla, i64 %16
  %17 = mul nuw nsw i64 %indvars.iv73, %11
  %arrayidx57 = getelementptr inbounds nuw i32, ptr %vla11, i64 %17
  br label %for.cond38

for.cond38:                                       ; preds = %for.cond38.preheader, %for.inc61
  %indvars.iv67 = phi i64 [ 1, %for.cond38.preheader ], [ %indvars.iv.next68, %for.inc61 ]
  %t.0 = phi i32 [ 0, %for.cond38.preheader ], [ %t.1, %for.inc61 ]
  %exitcond72.not = icmp eq i64 %indvars.iv67, %wide.trip.count71
  br i1 %exitcond72.not, label %for.cond.cleanup40, label %for.body41

for.cond.cleanup40:                               ; preds = %for.cond38
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  br label %for.cond33, !llvm.loop !15

for.body41:                                       ; preds = %for.cond38
  %arrayidx45 = getelementptr inbounds nuw i32, ptr %arrayidx43, i64 %indvars.iv67
  %18 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %idxprom48 = zext nneg i32 %t.0 to i64
  %arrayidx49 = getelementptr inbounds nuw i32, ptr %arrayidx43, i64 %idxprom48
  %19 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %cmp50 = icmp sgt i32 %18, %19
  br i1 %cmp50, label %if.then, label %if.else

if.then:                                          ; preds = %for.body41
  %arrayidx54 = getelementptr inbounds nuw i32, ptr %arrayidx57, i64 %idxprom48
  %20 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  %inc55 = add nsw i32 %20, 1
  store i32 %inc55, ptr %arrayidx54, align 4, !tbaa !5
  %21 = trunc nuw nsw i64 %indvars.iv67 to i32
  br label %for.inc61

if.else:                                          ; preds = %for.body41
  %arrayidx59 = getelementptr inbounds nuw i32, ptr %arrayidx57, i64 %indvars.iv67
  %22 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  %inc60 = add nsw i32 %22, 1
  store i32 %inc60, ptr %arrayidx59, align 4, !tbaa !5
  br label %for.inc61

for.inc61:                                        ; preds = %if.then, %if.else
  %t.1 = phi i32 [ %21, %if.then ], [ %t.0, %if.else ]
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  br label %for.cond38, !llvm.loop !16

for.cond68:                                       ; preds = %for.cond68.preheader, %for.cond.cleanup75
  %indvars.iv85 = phi i64 [ 0, %for.cond68.preheader ], [ %indvars.iv.next86, %for.cond.cleanup75 ]
  %exitcond89.not = icmp eq i64 %indvars.iv85, %wide.trip.count88
  br i1 %exitcond89.not, label %for.cond106, label %for.cond73.preheader

for.cond73.preheader:                             ; preds = %for.cond68
  %invariant.gep = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv85
  %invariant.gep47 = getelementptr inbounds nuw i32, ptr %vla11, i64 %indvars.iv85
  br label %for.cond73

for.cond73:                                       ; preds = %for.cond73.preheader, %for.inc99
  %indvars.iv78 = phi i64 [ 1, %for.cond73.preheader ], [ %indvars.iv.next79, %for.inc99 ]
  %t.2 = phi i32 [ 0, %for.cond73.preheader ], [ %t.3, %for.inc99 ]
  %exitcond84.not = icmp eq i64 %indvars.iv78, %wide.trip.count83
  br i1 %exitcond84.not, label %for.cond.cleanup75, label %for.body76

for.cond.cleanup75:                               ; preds = %for.cond73
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  br label %for.cond68, !llvm.loop !17

for.body76:                                       ; preds = %for.cond73
  %23 = mul nuw nsw i64 %indvars.iv78, %3
  %gep = getelementptr inbounds nuw i32, ptr %invariant.gep, i64 %23
  %24 = load i32, ptr %gep, align 4, !tbaa !5
  %idxprom81 = zext nneg i32 %t.2 to i64
  %25 = mul nuw nsw i64 %idxprom81, %3
  %gep46 = getelementptr inbounds nuw i32, ptr %invariant.gep, i64 %25
  %26 = load i32, ptr %gep46, align 4, !tbaa !5
  %cmp85 = icmp slt i32 %24, %26
  br i1 %cmp85, label %if.then86, label %if.else92

if.then86:                                        ; preds = %for.body76
  %27 = mul nuw nsw i64 %idxprom81, %11
  %gep50 = getelementptr inbounds nuw i32, ptr %invariant.gep47, i64 %27
  %28 = load i32, ptr %gep50, align 4, !tbaa !5
  %inc91 = add nsw i32 %28, 1
  store i32 %inc91, ptr %gep50, align 4, !tbaa !5
  %29 = trunc nuw nsw i64 %indvars.iv78 to i32
  br label %for.inc99

if.else92:                                        ; preds = %for.body76
  %30 = mul nuw nsw i64 %indvars.iv78, %11
  %gep48 = getelementptr inbounds nuw i32, ptr %invariant.gep47, i64 %30
  %31 = load i32, ptr %gep48, align 4, !tbaa !5
  %inc97 = add nsw i32 %31, 1
  store i32 %inc97, ptr %gep48, align 4, !tbaa !5
  br label %for.inc99

for.inc99:                                        ; preds = %if.then86, %if.else92
  %t.3 = phi i32 [ %29, %if.then86 ], [ %t.2, %if.else92 ]
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %for.cond73, !llvm.loop !18

for.cond106:                                      ; preds = %for.cond68, %for.inc126
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %for.inc126 ], [ 0, %for.cond68 ]
  %exitcond101.not = icmp eq i64 %indvars.iv96, %wide.trip.count65
  br i1 %exitcond101.not, label %for.end130, label %for.cond111.preheader

for.cond111.preheader:                            ; preds = %for.cond106
  %32 = mul nuw nsw i64 %indvars.iv96, %11
  %arrayidx116 = getelementptr inbounds nuw i32, ptr %vla11, i64 %32
  br label %for.cond111

for.cond111:                                      ; preds = %for.cond111.preheader, %for.inc123
  %indvars.iv90 = phi i64 [ 0, %for.cond111.preheader ], [ %indvars.iv.next91, %for.inc123 ]
  %exitcond95.not = icmp eq i64 %indvars.iv90, %wide.trip.count88
  br i1 %exitcond95.not, label %for.inc126, label %for.body114

for.body114:                                      ; preds = %for.cond111
  %arrayidx118 = getelementptr inbounds nuw i32, ptr %arrayidx116, i64 %indvars.iv90
  %33 = load i32, ptr %arrayidx118, align 4, !tbaa !5
  %cmp119 = icmp eq i32 %33, 0
  br i1 %cmp119, label %cleanup128, label %for.inc123

for.inc123:                                       ; preds = %for.body114
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br label %for.cond111, !llvm.loop !19

for.inc126:                                       ; preds = %for.cond111
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  br label %for.cond106, !llvm.loop !20

cleanup128:                                       ; preds = %for.body114
  %34 = trunc nuw nsw i64 %indvars.iv96 to i32
  %35 = trunc nuw nsw i64 %indvars.iv90 to i32
  %call121 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %34, i32 noundef %35)
  br label %cleanup133

for.end130:                                       ; preds = %for.cond106
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 2)
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !21
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %call.i37 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i37)
  %call.i.i39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i38)
  br label %cleanup133

cleanup133:                                       ; preds = %cleanup128, %for.end130
  call void @llvm.stackrestore.p0(ptr %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = !{!22, !22, i64 0}
!22 = !{!"vtable pointer", !8, i64 0}
