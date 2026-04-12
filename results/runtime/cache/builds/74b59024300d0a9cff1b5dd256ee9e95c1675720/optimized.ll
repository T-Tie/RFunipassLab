; ModuleID = '<stdin>'
source_filename = "/tmp/tmpcex6ij62.cpp"
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
  %k = alloca i32, align 4
  %h = alloca [25 x i32], align 16
  %len = alloca [25 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #5
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef align 16 %h) #5
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef align 16 %len) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %k)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [25 x i32], ptr %h, i64 0, i64 %idxprom
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %len, align 16, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc40, %for.end
  %ans.0 = phi i32 [ 1, %for.end ], [ %ans.1, %for.inc40 ]
  %i.1 = phi i32 [ 1, %for.end ], [ %inc41, %for.inc40 ]
  %cmp4 = icmp slt i32 %i.1, %0
  br i1 %cmp4, label %for.body5, label %for.end42

for.body5:                                        ; preds = %for.cond3
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc21, %for.body5
  %temp.0 = phi i32 [ -1, %for.body5 ], [ %temp.1, %for.inc21 ]
  %j.0 = phi i32 [ 0, %for.body5 ], [ %inc22, %for.inc21 ]
  %tIndex.0 = phi i32 [ -1, %for.body5 ], [ %tIndex.1, %for.inc21 ]
  %cmp7 = icmp slt i32 %j.0, %i.1
  br i1 %cmp7, label %for.body8, label %for.end23

for.body8:                                        ; preds = %for.cond6
  %idxprom9 = sext i32 %j.0 to i64
  %arrayidx10 = getelementptr inbounds [25 x i32], ptr %h, i64 0, i64 %idxprom9
  %1 = load i32, ptr %arrayidx10, align 4, !tbaa !5, !invariant.load !12
  %idxprom11 = sext i32 %i.1 to i64
  %arrayidx12 = getelementptr inbounds [25 x i32], ptr %h, i64 0, i64 %idxprom11
  %2 = load i32, ptr %arrayidx12, align 4, !tbaa !5, !invariant.load !12
  %cmp13 = icmp sge i32 %1, %2
  br i1 %cmp13, label %if.then, label %for.inc21

if.then:                                          ; preds = %for.body8
  %arrayidx15 = getelementptr inbounds [25 x i32], ptr %len, i64 0, i64 %idxprom9
  %3 = load i32, ptr %arrayidx15, align 4, !tbaa !5, !invariant.load !12
  %cmp16 = icmp sgt i32 %3, %temp.0
  br i1 %cmp16, label %if.then17, label %for.inc21

if.then17:                                        ; preds = %if.then
  br label %for.inc21

for.inc21:                                        ; preds = %for.body8, %if.then17, %if.then
  %temp.1 = phi i32 [ %temp.0, %for.body8 ], [ %3, %if.then17 ], [ %temp.0, %if.then ]
  %tIndex.1 = phi i32 [ %tIndex.0, %for.body8 ], [ %j.0, %if.then17 ], [ %tIndex.0, %if.then ]
  %inc22 = add nsw i32 %j.0, 1
  br label %for.cond6, !llvm.loop !13

for.end23:                                        ; preds = %for.cond6
  %cmp24 = icmp eq i32 %temp.0, -1
  br i1 %cmp24, label %if.end32, label %if.else

if.else:                                          ; preds = %for.end23
  %idxprom28 = sext i32 %tIndex.0 to i64
  %arrayidx29 = getelementptr inbounds [25 x i32], ptr %len, i64 0, i64 %idxprom28
  %4 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %add = add nsw i32 %4, 1
  br label %if.end32

if.end32:                                         ; preds = %for.end23, %if.else
  %add.sink = phi i32 [ %add, %if.else ], [ 1, %for.end23 ]
  %idxprom30 = sext i32 %i.1 to i64
  %arrayidx31 = getelementptr inbounds [25 x i32], ptr %len, i64 0, i64 %idxprom30
  store i32 %add.sink, ptr %arrayidx31, align 4, !tbaa !5
  %5 = load i32, ptr %arrayidx31, align 4, !tbaa !5, !invariant.load !12
  %cmp35 = icmp sgt i32 %5, %ans.0
  br i1 %cmp35, label %if.then36, label %for.inc40

if.then36:                                        ; preds = %if.end32
  br label %for.inc40

for.inc40:                                        ; preds = %if.end32, %if.then36
  %ans.1 = phi i32 [ %add.sink, %if.then36 ], [ %ans.0, %if.end32 ]
  %inc41 = add nsw i32 %i.1, 1
  br label %for.cond3, !llvm.loop !14

for.end42:                                        ; preds = %for.cond3
  %call43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %ans.0)
  %call44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call43, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef %len) #6
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef %h) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #6
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
attributes #5 = { nofree nounwind willreturn }
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
