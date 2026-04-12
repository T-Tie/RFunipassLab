; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_ja33gz1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@num = dso_local local_unnamed_addr global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  %result = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull %a) #7
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull %result) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv, %1
  br i1 %cmp.not, label %for.cond7, label %for.inc

for.inc:                                          ; preds = %for.cond
  store i32 1, ptr @num, align 4, !tbaa !5
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %call4 = call noundef i32 @_Z1fii(i32 noundef 1, i32 noundef %2) #8
  %arrayidx6 = getelementptr inbounds nuw [100 x i32], ptr %result, i64 0, i64 %indvars.iv
  store i32 %call4, ptr %arrayidx6, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond7:                                        ; preds = %for.cond, %for.inc14
  %3 = phi i32 [ %.pre, %for.inc14 ], [ %0, %for.cond ]
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.inc14 ], [ 1, %for.cond ]
  %4 = sext i32 %3 to i64
  %cmp8.not = icmp sgt i64 %indvars.iv2, %4
  br i1 %cmp8.not, label %for.end16, label %for.inc14

for.inc14:                                        ; preds = %for.cond7
  %arrayidx11 = getelementptr inbounds nuw [100 x i32], ptr %result, i64 0, i64 %indvars.iv2
  %5 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %call12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %5)
  %call13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call12, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond7, !llvm.loop !12

for.end16:                                        ; preds = %for.cond7
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %result) #8
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %a) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z1fii(i32 noundef %x, i32 noundef %y) local_unnamed_addr #3 {
entry:
  %conv.i = sitofp i32 %y to double
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 2, %entry ], [ %inc4, %for.inc ]
  %conv = uitofp nneg i32 %i.0 to double
  %call.i = tail call noundef double @sqrt(double noundef %conv.i) #8, !tbaa !5
  %cmp = fcmp ult double %call.i, %conv
  br i1 %cmp, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %y, %i.0
  %cmp1 = icmp eq i32 %rem, 0
  %cmp2 = icmp sge i32 %i.0, %x
  %or.cond = and i1 %cmp2, %cmp1
  br i1 %or.cond, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %0 = load i32, ptr @num, align 4, !tbaa !5
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @num, align 4, !tbaa !5
  %div = sdiv i32 %y, %i.0
  %call3 = tail call noundef i32 @_Z1fii(i32 noundef %i.0, i32 noundef %div) #8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %inc4 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %1 = load i32, ptr @num, align 4, !tbaa !5
  ret i32 %1
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
declare double @sqrt(double noundef) local_unnamed_addr #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
