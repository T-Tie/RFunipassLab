; ModuleID = '<stdin>'
source_filename = "/tmp/tmpub0e10v3.cpp"
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

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z3funii(i32 noundef %m, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %sum) #6
  store i32 1, ptr %sum, align 4, !tbaa !5
  %cmp = icmp eq i32 %n, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 2, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %mul = mul nsw i32 %0, %0
  %cmp1 = icmp sle i32 %mul, %m
  br i1 %cmp1, label %for.body, label %if.end18

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %m, %0
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %if.then3, label %for.inc

if.then3:                                         ; preds = %for.body
  %div = sdiv i32 %m, %0
  %call = call noundef i32 @_Z3funii(i32 noundef %div, i32 noundef %0) #7
  %1 = load i32, ptr %sum, align 4, !tbaa !5
  %add = add nsw i32 %1, %call
  store i32 %add, ptr %sum, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then3
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

if.else:                                          ; preds = %entry
  store i32 %n, ptr %i, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc15, %if.else
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %mul5 = mul nsw i32 %2, %2
  %cmp6 = icmp sle i32 %mul5, %m
  br i1 %cmp6, label %for.body7, label %if.end18

for.body7:                                        ; preds = %for.cond4
  %rem8 = srem i32 %m, %2
  %cmp9 = icmp eq i32 %rem8, 0
  br i1 %cmp9, label %if.then10, label %for.inc15

if.then10:                                        ; preds = %for.body7
  %div11 = sdiv i32 %m, %2
  %call12 = call noundef i32 @_Z3funii(i32 noundef %div11, i32 noundef %2) #7
  %3 = load i32, ptr %sum, align 4, !tbaa !5
  %add13 = add nsw i32 %3, %call12
  store i32 %add13, ptr %sum, align 4, !tbaa !5
  br label %for.inc15

for.inc15:                                        ; preds = %for.body7, %if.then10
  %inc16 = add nsw i32 %2, 1
  store i32 %inc16, ptr %i, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !12

if.end18:                                         ; preds = %for.cond4, %for.cond
  %4 = load i32, ptr %sum, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %sum) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #6
  ret i32 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %b = alloca i32, align 4
  %a = alloca [1000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %b) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef align 16 %a) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %b)
  %2 = load i32, ptr %b, align 4, !tbaa !5
  %call2 = call noundef i32 @_Z3funii(i32 noundef %2, i32 noundef 1) #8
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [1000 x i32], ptr %a, i64 0, i64 %idxprom
  store i32 %call2, ptr %arrayidx, align 4, !tbaa !5
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %3, %4
  br i1 %cmp4, label %for.inc10, label %for.end12

for.inc10:                                        ; preds = %for.cond3
  %idxprom6 = sext i32 %3 to i64
  %arrayidx7 = getelementptr inbounds [1000 x i32], ptr %a, i64 0, i64 %idxprom6
  %5 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %call8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %5)
  %call9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call8, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc11 = add nsw i32 %3, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !14

for.end12:                                        ; preds = %for.cond3
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef %a) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %b) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #9
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nofree nosync nounwind memory(none) }
attributes #8 = { nounwind memory(none) }
attributes #9 = { nounwind }

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
