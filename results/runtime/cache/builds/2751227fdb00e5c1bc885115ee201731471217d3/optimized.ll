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
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i) #8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %sum) #8
  store i32 1, ptr %sum, align 4, !tbaa !5
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %call2 = call noundef i32 @_Z5qufeni(i32 noundef %1) #9
  store i32 2, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %cmp3 = icmp sle i32 %2, %call2
  %3 = load i32, ptr %sum, align 4, !tbaa !5
  br i1 %cmp3, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %call4 = call noundef i32 @_Z3numiii(i32 noundef %1, i32 noundef %2, i32 noundef 2) #9
  %add = add nsw i32 %3, %call4
  store i32 %add, ptr %sum, align 4, !tbaa !5
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %3)
  %call6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call5, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %4 = load i32, ptr %t, align 4, !tbaa !5
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr %t, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %sum) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #8
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %t) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z5qufeni(i32 noundef %n) local_unnamed_addr #3 {
entry:
  %j = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #7
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %j, align 4, !tbaa !5
  %call = call noundef i32 @_Z5powerii(i32 noundef 2, i32 noundef %0) #10
  %cmp = icmp sgt i32 %call, %n
  br i1 %cmp, label %if.then, label %for.inc

if.then:                                          ; preds = %for.cond
  %sub = sub nsw i32 %0, 1
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %j) #7
  ret i32 %sub

for.inc:                                          ; preds = %for.cond
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z3numiii(i32 noundef %n, i32 noundef %g, i32 noundef %h) local_unnamed_addr #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %count = alloca i32, align 4
  %a = alloca [20000 x i32], align 16
  %cmp = icmp eq i32 %g, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %cmp1 = icmp sge i32 %n, %h
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #7
  store i32 0, ptr %j, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %count) #7
  store i32 0, ptr %count, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 80000, ptr noundef align 16 %a) #7
  store i32 %h, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %0, %n
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %n, %0
  %cmp3 = icmp eq i32 %rem, 0
  br i1 %cmp3, label %if.then4, label %for.inc

if.then4:                                         ; preds = %for.body
  %1 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom
  store i32 %0, ptr %arrayidx, align 4, !tbaa !5
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then4
  %inc6 = add nsw i32 %0, 1
  store i32 %inc6, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %2, 0
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %for.end
  store i32 0, ptr %retval, align 4
  br label %cleanup

if.else:                                          ; preds = %for.end
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc16, %if.else
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %3, %2
  %4 = load i32, ptr %count, align 4, !tbaa !5
  br i1 %cmp10, label %for.inc16, label %for.end18

for.inc16:                                        ; preds = %for.cond9
  %idxprom12 = sext i32 %3 to i64
  %arrayidx13 = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom12
  %5 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %div = sdiv i32 %n, %5
  %sub = sub nsw i32 %g, 1
  %call = call noundef i32 @_Z3numiii(i32 noundef %div, i32 noundef %sub, i32 noundef %5) #10
  %add = add nsw i32 %4, %call
  store i32 %add, ptr %count, align 4, !tbaa !5
  %inc17 = add nsw i32 %3, 1
  store i32 %inc17, ptr %i, align 4, !tbaa !5
  br label %for.cond9, !llvm.loop !15

for.end18:                                        ; preds = %for.cond9
  store i32 %4, ptr %retval, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end18, %if.then8
  call void @llvm.lifetime.end.p0(i64 noundef 80000, ptr noundef align 16 %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %count) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %j) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %i) #7
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
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
  %sum = alloca i32, align 4
  %k = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %sum) #7
  store i32 1, ptr %sum, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #7
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %b
  %1 = load i32, ptr %sum, align 4, !tbaa !5
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %mul = mul nsw i32 %1, %a
  store i32 %mul, ptr %sum, align 4, !tbaa !5
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %k) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %sum) #7
  ret i32 %1
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind memory(none) }
attributes #10 = { nofree nosync nounwind memory(none) }

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
