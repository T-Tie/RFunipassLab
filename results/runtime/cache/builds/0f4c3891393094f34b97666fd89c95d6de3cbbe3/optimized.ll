; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_t3dpcv3.cpp"
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
  %t = alloca i32, align 4
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %t) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %t)
  %.pr = load i32, ptr %t, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %0 = phi i32 [ %dec, %for.end ], [ %.pr, %entry ]
  %cmp = icmp sge i32 %0, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %n) #8
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %call2 = call noundef i32 @_Z5qufeni(i32 noundef %1) #9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %i.0 = phi i32 [ 2, %while.body ], [ %inc, %for.inc ]
  %sum.0 = phi i32 [ 1, %while.body ], [ %add, %for.inc ]
  %cmp3 = icmp sle i32 %i.0, %call2
  br i1 %cmp3, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %call4 = call noundef i32 @_Z3numiii(i32 noundef %2, i32 noundef %i.0, i32 noundef 2) #9
  %add = add nsw i32 %sum.0, %call4
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %call6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call5, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %3 = load i32, ptr %t, align 4, !tbaa !5
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %t, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #8
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %t) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind memory(none) uwtable
define dso_local noundef i32 @_Z5qufeni(i32 noundef %n) local_unnamed_addr #3 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %phiofops = phi i32 [ 0, %entry ], [ %j.0, %for.inc ]
  %j.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %call = call noundef i32 @_Z5powerii(i32 noundef 2, i32 noundef %j.0) #10
  %cmp = icmp sgt i32 %call, %n
  br i1 %cmp, label %if.then, label %for.inc

if.then:                                          ; preds = %for.cond
  ret i32 %phiofops

for.inc:                                          ; preds = %for.cond
  %inc = add nsw i32 %j.0, 1
  br label %for.cond, !llvm.loop !13
}

; Function Attrs: mustprogress nofree nosync nounwind memory(none) uwtable
define dso_local noundef i32 @_Z3numiii(i32 noundef %n, i32 noundef %g, i32 noundef %h) local_unnamed_addr #3 {
entry:
  %a = alloca [20000 x i32], align 16
  %cmp = icmp eq i32 %g, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %cmp1 = icmp sge i32 %n, %h
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  call void @llvm.lifetime.start.p0(i64 noundef 80000, ptr noundef align 16 %a) #7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %i.0 = phi i32 [ %h, %if.end ], [ %inc6, %for.inc ]
  %j.0 = phi i32 [ 0, %if.end ], [ %j.1, %for.inc ]
  %cmp2 = icmp slt i32 %i.0, %n
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %n, %i.0
  %cmp3 = icmp eq i32 %rem, 0
  br i1 %cmp3, label %if.then4, label %for.inc

if.then4:                                         ; preds = %for.body
  %idxprom = sext i32 %j.0 to i64
  %arrayidx = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom
  store i32 %i.0, ptr %arrayidx, align 4, !tbaa !5
  %inc = add nsw i32 %j.0, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then4
  %j.1 = phi i32 [ %inc, %if.then4 ], [ %j.0, %for.body ]
  %inc6 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %cmp7 = icmp eq i32 %j.0, 0
  br i1 %cmp7, label %cleanup, label %if.else

if.else:                                          ; preds = %for.end
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc16, %if.else
  %i.1 = phi i32 [ 0, %if.else ], [ %inc17, %for.inc16 ]
  %count.0 = phi i32 [ 0, %if.else ], [ %add, %for.inc16 ]
  %cmp10 = icmp slt i32 %i.1, %j.0
  br i1 %cmp10, label %for.inc16, label %cleanup

for.inc16:                                        ; preds = %for.cond9
  %idxprom12 = sext i32 %i.1 to i64
  %arrayidx13 = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom12
  %0 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %div = sdiv i32 %n, %0
  %sub = sub nsw i32 %g, 1
  %call = call noundef i32 @_Z3numiii(i32 noundef %div, i32 noundef %sub, i32 noundef %0) #11
  %add = add nsw i32 %count.0, %call
  %inc17 = add nsw i32 %i.1, 1
  br label %for.cond9, !llvm.loop !15

cleanup:                                          ; preds = %for.cond9, %for.end
  %retval.1 = phi i32 [ 0, %for.end ], [ %count.0, %for.cond9 ]
  call void @llvm.lifetime.end.p0(i64 noundef 80000, ptr noundef %a) #7
  br label %return

return:                                           ; preds = %land.lhs.true, %cleanup
  %retval.0 = phi i32 [ %retval.1, %cleanup ], [ 1, %land.lhs.true ]
  ret i32 %retval.0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z5powerii(i32 noundef %a, i32 noundef %b) local_unnamed_addr #6 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %sum.0 = phi i32 [ 1, %entry ], [ %mul, %for.inc ]
  %k.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %cmp = icmp sle i32 %k.0, %b
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %mul = mul nsw i32 %sum.0, %a
  %inc = add nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  ret i32 %sum.0
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind memory(none) }
attributes #10 = { nofree nosync }
attributes #11 = { nofree nosync nounwind }

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
