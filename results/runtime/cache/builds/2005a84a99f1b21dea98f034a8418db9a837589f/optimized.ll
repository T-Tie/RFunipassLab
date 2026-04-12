; ModuleID = '<stdin>'
source_filename = "/tmp/tmpz6vg8p7j.cpp"
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
@.str = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %year = alloca i32, align 4
  %month1 = alloca i32, align 4
  %month2 = alloca i32, align 4
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %year) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %month1) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %month2) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc25, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %k.0, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %year)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call1, ptr noundef nonnull align 4 dereferenceable(4) %month1)
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call2, ptr noundef nonnull align 4 dereferenceable(4) %month2)
  %1 = load i32, ptr %year, align 4, !tbaa !5
  %rem = srem i32 %1, 4
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %for.body
  %rem5 = srem i32 %1, 100
  %cmp6 = icmp ne i32 %rem5, 0
  br i1 %cmp6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %for.body
  %rem7 = srem i32 %1, 400
  %cmp8 = icmp eq i32 %rem7, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true
  %2 = phi i1 [ true, %land.lhs.true ], [ %cmp8, %lor.rhs ]
  %conv = zext i1 %2 to i32
  %3 = load i32, ptr %month1, align 4, !tbaa !5
  %4 = load i32, ptr %month2, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %3, %4
  br i1 %cmp9, label %if.end, label %if.else

if.else:                                          ; preds = %lor.end
  store i32 %3, ptr %month2, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %lor.end, %if.else
  %month.0 = phi i32 [ %4, %if.else ], [ %3, %lor.end ]
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %days.0 = phi i32 [ 0, %if.end ], [ %days.1, %sw.epilog ]
  %month.1 = phi i32 [ %month.0, %if.end ], [ %inc, %sw.epilog ]
  %5 = load i32, ptr %month2, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %month.1, %5
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  switch i32 %month.1, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb12
    i32 3, label %sw.bb12
    i32 5, label %sw.bb12
    i32 7, label %sw.bb12
    i32 8, label %sw.bb12
    i32 10, label %sw.bb12
    i32 12, label %sw.bb12
    i32 4, label %sw.bb14
    i32 6, label %sw.bb14
    i32 9, label %sw.bb14
    i32 11, label %sw.bb14
  ]

sw.bb:                                            ; preds = %while.body
  %add = add nsw i32 28, %conv
  %add11 = add nsw i32 %days.0, %add
  br label %sw.epilog

sw.bb12:                                          ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  %add13 = add nsw i32 %days.0, 31
  br label %sw.epilog

sw.bb14:                                          ; preds = %while.body, %while.body, %while.body, %while.body
  %add15 = add nsw i32 %days.0, 30
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb12, %sw.bb, %while.body
  %days.1 = phi i32 [ %days.0, %while.body ], [ %add11, %sw.bb ], [ %add13, %sw.bb12 ], [ %add15, %sw.bb14 ]
  %inc = add nsw i32 %month.1, 1
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %rem16 = srem i32 %days.0, 7
  %cmp17 = icmp eq i32 %rem16, 0
  br i1 %cmp17, label %for.inc, label %if.else21

if.else21:                                        ; preds = %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.else21, %while.end
  %.str.1.sink = phi ptr [ @.str.1, %if.else21 ], [ @.str, %while.end ]
  %call22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %.str.1.sink)
  %call23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call22, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc25 = add nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %month2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %month1) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %year) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
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
