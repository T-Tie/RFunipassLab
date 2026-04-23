; ModuleID = '<stdin>'
source_filename = "/tmp/tmprfe5qci5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@yinshu = dso_local local_unnamed_addr global [10000 x i32] zeroinitializer, align 16
@j = dso_local local_unnamed_addr global i32 0, align 4
@temp = dso_local local_unnamed_addr global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %t = alloca i32, align 4
  %n = alloca [10000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %t) #7
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %t)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 10000
  br i1 %exitcond.not, label %for.cond1, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [10000 x i32], ptr @yinshu, i64 0, i64 %indvars.iv
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %for.body3 ], [ 0, %for.cond ]
  %0 = load i32, ptr %t, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp2 = icmp slt i64 %indvars.iv4, %1
  br i1 %cmp2, label %for.body3, label %for.cond10

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [10000 x i32], ptr %n, i64 0, i64 %indvars.iv4
  %call6 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx5)
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  br label %for.cond1, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond1, %for.body12
  %2 = phi i32 [ %.pre, %for.body12 ], [ %0, %for.cond1 ]
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.body12 ], [ 0, %for.cond1 ]
  %3 = sext i32 %2 to i64
  %cmp11 = icmp slt i64 %indvars.iv7, %3
  br i1 %cmp11, label %for.body12, label %for.end19

for.body12:                                       ; preds = %for.cond10
  %arrayidx14 = getelementptr inbounds nuw [10000 x i32], ptr %n, i64 0, i64 %indvars.iv7
  %4 = load i32, ptr %arrayidx14, align 4, !tbaa !5, !invariant.load !13
  call void @_Z6fenjieii(i32 noundef 1, i32 noundef %4) #8
  %5 = load i32, ptr @temp, align 4, !tbaa !5
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %5)
  %call16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call15, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, ptr @temp, align 4, !tbaa !5
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %.pre = load i32, ptr %t, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !14

for.end19:                                        ; preds = %for.cond10
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %n) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %t) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z6fenjieii(i32 noundef %j, i32 noundef %sum) local_unnamed_addr #3 {
entry:
  %sub = add nsw i32 %j, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [10000 x i32], ptr @yinshu, i64 0, i64 %idxprom
  %idxprom3 = sext i32 %j to i64
  %arrayidx4 = getelementptr inbounds [10000 x i32], ptr @yinshu, i64 0, i64 %idxprom3
  %add = add nsw i32 %j, 1
  %smax = call i32 @llvm.smax.i32(i32 noundef %sum, i32 noundef 1) #9
  %0 = add nuw i32 %smax, 1
  br label %for.cond

for.cond:                                         ; preds = %if.end7, %entry
  %i.0 = phi i32 [ 2, %entry ], [ %inc8, %if.end7 ]
  %exitcond = icmp eq i32 %i.0, %0
  br i1 %exitcond, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %sum, %i.0
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %for.body
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !13
  %cmp2.not = icmp sgt i32 %1, %i.0
  br i1 %cmp2.not, label %if.end7, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 %i.0, ptr %arrayidx4, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %sum, %i.0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  %2 = load i32, ptr @temp, align 4, !tbaa !5
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr @temp, align 4, !tbaa !5
  br label %if.end7

if.else:                                          ; preds = %if.then
  %div = sdiv i32 %sum, %i.0
  tail call void @_Z6fenjieii(i32 noundef %add, i32 noundef %div) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.else, %land.lhs.true, %for.body
  %inc8 = add nuw i32 %i.0, 1
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { willreturn }
attributes #10 = { nofree nosync nounwind }

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
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
