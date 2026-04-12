; ModuleID = '<stdin>'
source_filename = "/tmp/tmplblg0rj5.cpp"
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
  %a = alloca [16 x i32], align 16
  %temp = alloca i32, align 4
  %temp1 = alloca i32, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc40, %entry
  call void @llvm.lifetime.start.p0(i64 noundef 64, ptr noundef nonnull align 16 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %temp) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %temp)
  %0 = load i32, ptr %temp, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %for.end43, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %for.cond ]
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %temp1) #6
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %temp1)
  %1 = load i32, ptr %temp1, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %1, 0
  br i1 %cmp3, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond1
  %arrayidx6 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv
  store i32 %1, ptr %arrayidx6, align 4, !tbaa !5
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %temp1) #6
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %temp1) #6
  %wide.trip.count31 = and i64 %indvars.iv, 4294967295
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.inc30 ], [ 0, %for.end ]
  %m.0 = phi i32 [ %m.1, %for.inc30 ], [ 0, %for.end ]
  %exitcond32.not = icmp eq i64 %indvars.iv27, %wide.trip.count31
  br i1 %exitcond32.not, label %for.inc40, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.cond11
  %arrayidx19 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv27
  %2 = load i32, ptr %arrayidx19, align 4, !tbaa !5, !invariant.load !12
  br label %for.cond14

for.cond14:                                       ; preds = %for.cond14.preheader, %for.body17
  %indvars.iv22 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next23, %for.body17 ]
  %m.1 = phi i32 [ %m.0, %for.cond14.preheader ], [ %spec.select, %for.body17 ]
  %exitcond.not = icmp eq i64 %indvars.iv22, %wide.trip.count31
  br i1 %exitcond.not, label %for.inc30, label %for.body17

for.body17:                                       ; preds = %for.cond14
  %arrayidx21 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv22
  %3 = load i32, ptr %arrayidx21, align 4, !tbaa !5, !invariant.load !12
  %mul = shl nsw i32 %3, 1
  %cmp22 = icmp eq i32 %2, %mul
  %inc24 = zext i1 %cmp22 to i32
  %spec.select = add nsw i32 %m.1, %inc24
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond14, !llvm.loop !13

for.inc30:                                        ; preds = %for.cond14
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond11, !llvm.loop !14

for.inc40:                                        ; preds = %for.cond11
  %call34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %m.0)
  %call35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call34, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %temp) #6
  call void @llvm.lifetime.end.p0(i64 noundef 64, ptr noundef nonnull %a) #6
  br label %for.cond, !llvm.loop !15

for.end43:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %temp) #6
  call void @llvm.lifetime.end.p0(i64 noundef 64, ptr noundef nonnull %a) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
