; ModuleID = '<stdin>'
source_filename = "/tmp/tmp3kkd_o0m.cpp"
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
  %a = alloca [35000 x i32], align 16
  %b = alloca [35000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 140000, ptr noundef align 16 %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 140000, ptr noundef align 16 %b) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [35000 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc10, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc11, %for.inc10 ]
  %cmp3 = icmp slt i32 %i.1, %0
  br i1 %cmp3, label %for.inc10, label %for.end12

for.inc10:                                        ; preds = %for.cond2
  %idxprom5 = sext i32 %i.1 to i64
  %arrayidx6 = getelementptr inbounds [35000 x i32], ptr %a, i64 0, i64 %idxprom5
  %1 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %call7 = call noundef i32 @_Z4factii(i32 noundef %1, i32 noundef 2) #7
  %arrayidx9 = getelementptr inbounds [35000 x i32], ptr %b, i64 0, i64 %idxprom5
  store i32 %call7, ptr %arrayidx9, align 4, !tbaa !5
  %inc11 = add nsw i32 %i.1, 1
  br label %for.cond2, !llvm.loop !12

for.end12:                                        ; preds = %for.cond2
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc20, %for.end12
  %i.2 = phi i32 [ 0, %for.end12 ], [ %inc21, %for.inc20 ]
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %i.2, %2
  br i1 %cmp14, label %for.inc20, label %for.end22

for.inc20:                                        ; preds = %for.cond13
  %idxprom16 = sext i32 %i.2 to i64
  %arrayidx17 = getelementptr inbounds [35000 x i32], ptr %b, i64 0, i64 %idxprom16
  %3 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %call18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %3)
  %call19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call18, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc21 = add nsw i32 %i.2, 1
  br label %for.cond13, !llvm.loop !13

for.end22:                                        ; preds = %for.cond13
  call void @llvm.lifetime.end.p0(i64 noundef 140000, ptr noundef %b) #8
  call void @llvm.lifetime.end.p0(i64 noundef 140000, ptr noundef %a) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z4factii(i32 noundef %n, i32 noundef %m) local_unnamed_addr #3 {
entry:
  %cmp = icmp slt i32 %n, %m
  br i1 %cmp, label %cleanup, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %n, 2
  br i1 %cmp1, label %cleanup, label %if.else3

if.else3:                                         ; preds = %if.else
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else3
  %sum.0 = phi i32 [ 1, %if.else3 ], [ %sum.1, %for.inc ]
  %i.0 = phi i32 [ %m, %if.else3 ], [ %inc, %for.inc ]
  %cmp4 = icmp slt i32 %i.0, %n
  br i1 %cmp4, label %for.body, label %cleanup

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %n, %i.0
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then6, label %for.inc

if.then6:                                         ; preds = %for.body
  %div = sdiv i32 %n, %i.0
  %call = call noundef i32 @_Z4factii(i32 noundef %div, i32 noundef %i.0) #9
  %add = add nsw i32 %sum.0, %call
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then6
  %sum.1 = phi i32 [ %add, %if.then6 ], [ %sum.0, %for.body ]
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !14

cleanup:                                          ; preds = %for.cond, %if.else, %entry
  %.sink = phi i32 [ 0, %entry ], [ 1, %if.else ], [ %sum.0, %for.cond ]
  ret i32 %.sink
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind willreturn }
attributes #7 = { nounwind memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nofree nosync nounwind memory(none) }

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
