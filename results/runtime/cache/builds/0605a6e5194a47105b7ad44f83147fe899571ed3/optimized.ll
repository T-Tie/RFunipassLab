; ModuleID = '<stdin>'
source_filename = "/tmp/tmp3z8hrftj.cpp"
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
  %n = alloca i32, align 4
  %a = alloca [20000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 80000, ptr nonnull %a) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %for.inc11.loopexit, %entry
  %i.0.ph = phi i32 [ %3, %for.inc11.loopexit ], [ 0, %entry ]
  %count.0.ph = phi i32 [ %count.0, %for.inc11.loopexit ], [ %0, %entry ]
  %idxprom = zext nneg i32 %i.0.ph to i64
  %arrayidx = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %idxprom
  %wide.trip.count = zext nneg i32 %i.0.ph to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %if.then
  %count.0 = phi i32 [ %dec10, %if.then ], [ %count.0.ph, %for.cond.outer ]
  %cmp = icmp slt i32 %i.0.ph, %count.0
  br i1 %cmp, label %for.body, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.cond
  %smax20 = call i32 @llvm.smax.i32(i32 %count.0, i32 0)
  %wide.trip.count21 = zext nneg i32 %smax20 to i64
  br label %for.cond14

for.body:                                         ; preds = %for.cond
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  br label %for.cond2

for.cond2:                                        ; preds = %for.body4, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc11.loopexit, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %arrayidx8 = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %cmp9 = icmp eq i32 %1, %2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp9, label %if.then, label %for.cond2, !llvm.loop !9

if.then:                                          ; preds = %for.body4
  %dec10 = add nsw i32 %count.0, -1
  br label %for.cond, !llvm.loop !12

for.inc11.loopexit:                               ; preds = %for.cond2
  %3 = add nuw nsw i32 %i.0.ph, 1
  br label %for.cond.outer, !llvm.loop !12

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc27
  %indvars.iv16 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next17, %for.inc27 ]
  %exitcond22.not = icmp eq i64 %indvars.iv16, %wide.trip.count21
  br i1 %exitcond22.not, label %for.end29, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %cmp17 = icmp eq i64 %indvars.iv16, 0
  br i1 %cmp17, label %for.inc27, label %if.else

if.else:                                          ; preds = %for.body16
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %arrayidx24 = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv16
  br label %for.inc27

for.inc27:                                        ; preds = %for.body16, %if.else
  %.sink.in = phi ptr [ %arrayidx24, %if.else ], [ %a, %for.body16 ]
  %.sink = load i32, ptr %.sink.in, align 4, !tbaa !5
  %call21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %.sink)
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond14, !llvm.loop !13

for.end29:                                        ; preds = %for.cond14
  call void @llvm.lifetime.end.p0(i64 80000, ptr nonnull %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
