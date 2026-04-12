; ModuleID = '<stdin>'
source_filename = "/tmp/tmpwr4qiply.cpp"
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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, 31
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %i.0 = phi i32 [ 1, %if.then ], [ %inc, %for.inc ]
  %s.0 = phi i32 [ 1, %if.then ], [ %mul, %for.inc ]
  %cmp1 = icmp sle i32 %i.0, %0
  br i1 %cmp1, label %for.inc, label %if.end

for.inc:                                          ; preds = %for.cond
  %mul = mul i32 %s.0, 2
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

if.else:                                          ; preds = %entry
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc33, %if.else
  %i.1 = phi i32 [ 1, %if.else ], [ %inc34, %for.inc33 ]
  %sub = sub nsw i32 %0, 31
  %cmp4 = icmp sle i32 %i.1, %sub
  br i1 %cmp4, label %for.body5, label %for.end35

for.body5:                                        ; preds = %for.cond3
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc12, %for.body5
  %j.0 = phi i32 [ 0, %for.body5 ], [ %inc13, %for.inc12 ]
  %cmp7 = icmp slt i32 %j.0, 39
  br i1 %cmp7, label %for.inc12, label %for.end14

for.inc12:                                        ; preds = %for.cond6
  %inc13 = add nsw i32 %j.0, 1
  br label %for.cond6, !llvm.loop !12

for.end14:                                        ; preds = %for.cond6
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc30, %for.end14
  %j.1 = phi i32 [ 0, %for.end14 ], [ %add, %for.inc30 ]
  %cmp16 = icmp sle i32 %j.1, 39
  br i1 %cmp16, label %for.inc30, label %for.inc33

for.inc30:                                        ; preds = %for.cond15
  %add = add nsw i32 %j.1, 1
  br label %for.cond15, !llvm.loop !13

for.inc33:                                        ; preds = %for.cond15
  %inc34 = add nsw i32 %i.1, 1
  br label %for.cond3, !llvm.loop !14

for.end35:                                        ; preds = %for.cond3
  br label %while.body

while.body:                                       ; preds = %for.end35, %while.body
  %i.2 = phi i32 [ 39, %for.end35 ], [ %dec, %while.body ]
  %dec = add nsw i32 %i.2, -1
  br label %while.body, !llvm.loop !15

if.end:                                           ; preds = %for.cond
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEj(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i32 noundef %s.0)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

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
