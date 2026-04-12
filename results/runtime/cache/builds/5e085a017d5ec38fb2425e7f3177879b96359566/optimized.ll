; ModuleID = '<stdin>'
source_filename = "/tmp/tmpiegxet4h.cpp"
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
  %m = alloca [20001 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 80004, ptr nonnull %m) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80004) %m, i8 0, i64 80004, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv, %1
  br i1 %cmp.not, label %for.cond2, label %for.inc

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [20001 x i32], ptr %m, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond, %for.inc28
  %n.promoted22 = phi i32 [ %n.promoted21, %for.inc28 ], [ %0, %for.cond ]
  %i.1 = phi i32 [ %inc29, %for.inc28 ], [ 1, %for.cond ]
  %cmp3.not = icmp sgt i32 %i.1, %n.promoted22
  br i1 %cmp3.not, label %for.cond31, label %for.cond5

for.cond5:                                        ; preds = %for.cond2, %for.inc25
  %n.promoted21 = phi i32 [ %n.promoted20, %for.inc25 ], [ %n.promoted22, %for.cond2 ]
  %i.2 = phi i32 [ %i.3, %for.inc25 ], [ %i.1, %for.cond2 ]
  %j.0.in = phi i32 [ %j.1, %for.inc25 ], [ %i.1, %for.cond2 ]
  %cmp6.not.not = icmp slt i32 %j.0.in, %n.promoted21
  br i1 %cmp6.not.not, label %for.body7, label %for.inc28

for.body7:                                        ; preds = %for.cond5
  %j.0 = add nsw i32 %j.0.in, 1
  %idxprom8 = sext i32 %i.2 to i64
  %arrayidx9 = getelementptr inbounds [20001 x i32], ptr %m, i64 0, i64 %idxprom8
  %2 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %idxprom10 = sext i32 %j.0 to i64
  %arrayidx11 = getelementptr inbounds [20001 x i32], ptr %m, i64 0, i64 %idxprom10
  %3 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %2, %3
  br i1 %cmp12, label %for.cond13.preheader, label %for.inc25

for.cond13.preheader:                             ; preds = %for.body7
  %4 = sext i32 %j.0.in to i64
  %5 = add nsw i64 %4, 1
  %6 = sext i32 %n.promoted21 to i64
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc21
  %indvars.iv24 = phi i64 [ %5, %for.cond13.preheader ], [ %indvars.iv.next25, %for.inc21 ]
  %cmp14.not = icmp sgt i64 %indvars.iv24, %6
  br i1 %cmp14.not, label %for.end23, label %for.inc21

for.inc21:                                        ; preds = %for.cond13
  %indvars.iv.next25 = add nsw i64 %indvars.iv24, 1
  %arrayidx18 = getelementptr inbounds [20001 x i32], ptr %m, i64 0, i64 %indvars.iv.next25
  %7 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %arrayidx20 = getelementptr inbounds [20001 x i32], ptr %m, i64 0, i64 %indvars.iv24
  store i32 %7, ptr %arrayidx20, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !12

for.end23:                                        ; preds = %for.cond13
  %8 = trunc nsw i64 %indvars.iv24 to i32
  %sub = add nsw i32 %n.promoted21, -1
  store i32 %sub, ptr %n, align 4, !tbaa !5
  %sub24 = add nsw i32 %i.2, -1
  br label %for.inc25

for.inc25:                                        ; preds = %for.body7, %for.end23
  %n.promoted20 = phi i32 [ %sub, %for.end23 ], [ %n.promoted21, %for.body7 ]
  %i.3 = phi i32 [ %sub24, %for.end23 ], [ %i.2, %for.body7 ]
  %j.1 = phi i32 [ %8, %for.end23 ], [ %j.0, %for.body7 ]
  br label %for.cond5, !llvm.loop !13

for.inc28:                                        ; preds = %for.cond5
  %inc29 = add nsw i32 %i.2, 1
  br label %for.cond2, !llvm.loop !14

for.cond31:                                       ; preds = %for.cond2, %for.inc39
  %9 = phi i32 [ %.pre, %for.inc39 ], [ %n.promoted22, %for.cond2 ]
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.inc39 ], [ 1, %for.cond2 ]
  %10 = sext i32 %9 to i64
  %cmp33.not.not = icmp slt i64 %indvars.iv27, %10
  br i1 %cmp33.not.not, label %for.inc39, label %for.end41

for.inc39:                                        ; preds = %for.cond31
  %arrayidx36 = getelementptr inbounds nuw [20001 x i32], ptr %m, i64 0, i64 %indvars.iv27
  %11 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  %call37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %11)
  %call38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %call37, i8 noundef signext 32)
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond31, !llvm.loop !15

for.end41:                                        ; preds = %for.cond31
  %arrayidx43 = getelementptr inbounds [20001 x i32], ptr %m, i64 0, i64 %10
  %12 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %call44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %12)
  %call45 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call44, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 80004, ptr nonnull %m) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
