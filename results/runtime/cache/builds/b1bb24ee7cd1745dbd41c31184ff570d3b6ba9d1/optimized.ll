; ModuleID = '<stdin>'
source_filename = "/tmp/tmpcrsr4xh2.cpp"
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
  %s = alloca [500 x i32], align 16
  %t = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 2000, ptr %s) #4
  call void @llvm.lifetime.start.p0(i64 2000, ptr %t) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [500 x i32], ptr %s, i64 0, i64 %idxprom
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc13, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc14, %for.inc13 ]
  %len.0 = phi i32 [ 0, %for.end ], [ %len.1, %for.inc13 ]
  %cmp3 = icmp slt i32 %i.1, %0
  br i1 %cmp3, label %for.body4, label %for.end15

for.body4:                                        ; preds = %for.cond2
  %idxprom5 = sext i32 %i.1 to i64
  %arrayidx6 = getelementptr inbounds [500 x i32], ptr %s, i64 0, i64 %idxprom5
  %1 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %rem = srem i32 %1, 2
  %cmp7 = icmp ne i32 %rem, 0
  br i1 %cmp7, label %if.then, label %for.inc13

if.then:                                          ; preds = %for.body4
  %idxprom10 = sext i32 %len.0 to i64
  %arrayidx11 = getelementptr inbounds [500 x i32], ptr %t, i64 0, i64 %idxprom10
  store i32 %1, ptr %arrayidx11, align 4, !tbaa !5
  %inc12 = add nsw i32 %len.0, 1
  br label %for.inc13

for.inc13:                                        ; preds = %for.body4, %if.then
  %len.1 = phi i32 [ %inc12, %if.then ], [ %len.0, %for.body4 ]
  %inc14 = add nsw i32 %i.1, 1
  br label %for.cond2, !llvm.loop !12

for.end15:                                        ; preds = %for.cond2
  %cmp16 = icmp eq i32 %len.0, 0
  br i1 %cmp16, label %cleanup, label %if.end18

if.end18:                                         ; preds = %for.end15
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc47, %if.end18
  %i.2 = phi i32 [ 0, %if.end18 ], [ %inc48, %for.inc47 ]
  %sub = sub nsw i32 %len.0, 1
  %cmp20 = icmp slt i32 %i.2, %sub
  br i1 %cmp20, label %for.body21, label %for.end49

for.body21:                                       ; preds = %for.cond19
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc44, %for.body21
  %j.0 = phi i32 [ 0, %for.body21 ], [ %add, %for.inc44 ]
  %sub24 = sub nsw i32 %sub, %i.2
  %cmp25 = icmp slt i32 %j.0, %sub24
  br i1 %cmp25, label %for.body26, label %for.inc47

for.body26:                                       ; preds = %for.cond22
  %idxprom27 = sext i32 %j.0 to i64
  %arrayidx28 = getelementptr inbounds [500 x i32], ptr %t, i64 0, i64 %idxprom27
  %2 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %add = add nsw i32 %j.0, 1
  %idxprom29 = sext i32 %add to i64
  %arrayidx30 = getelementptr inbounds [500 x i32], ptr %t, i64 0, i64 %idxprom29
  %3 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %cmp31 = icmp sgt i32 %2, %3
  br i1 %cmp31, label %if.then32, label %for.inc44

if.then32:                                        ; preds = %for.body26
  store i32 %3, ptr %arrayidx28, align 4, !tbaa !5
  store i32 %2, ptr %arrayidx30, align 4, !tbaa !5
  br label %for.inc44

for.inc44:                                        ; preds = %for.body26, %if.then32
  br label %for.cond22, !llvm.loop !13

for.inc47:                                        ; preds = %for.cond22
  %inc48 = add nsw i32 %i.2, 1
  br label %for.cond19, !llvm.loop !14

for.end49:                                        ; preds = %for.cond19
  %4 = load i32, ptr %t, align 16, !tbaa !5
  %call51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %4)
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc59, %for.end49
  %i.3 = phi i32 [ 1, %for.end49 ], [ %inc60, %for.inc59 ]
  %cmp53 = icmp slt i32 %i.3, %len.0
  br i1 %cmp53, label %for.inc59, label %cleanup

for.inc59:                                        ; preds = %for.cond52
  %call55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 44)
  %idxprom56 = sext i32 %i.3 to i64
  %arrayidx57 = getelementptr inbounds [500 x i32], ptr %t, i64 0, i64 %idxprom56
  %5 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  %call58 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call55, i32 noundef %5)
  %inc60 = add nsw i32 %i.3, 1
  br label %for.cond52, !llvm.loop !15

cleanup:                                          ; preds = %for.cond52, %for.end15
  call void @llvm.lifetime.end.p0(i64 2000, ptr %t) #4
  call void @llvm.lifetime.end.p0(i64 2000, ptr %s) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
