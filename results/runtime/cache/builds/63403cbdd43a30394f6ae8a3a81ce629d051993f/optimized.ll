; ModuleID = '<stdin>'
source_filename = "/tmp/tmpoluqoz53.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [10000 x i8], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 10000, ptr noundef nonnull align 16 captures(none) dereferenceable(10000) %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call1 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(10000) %a, i64 noundef 10000)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %while.body ]
  %idx.ext = sext i32 %i.0 to i64
  %add.ptr = getelementptr inbounds i8, ptr %a, i64 %idx.ext
  %0 = load i8, ptr %add.ptr, align 1, !tbaa !5
  %conv = sext i8 %0 to i32
  %cmp = icmp ne i32 %conv, 32
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %inc = add nsw i32 %i.0, 1
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  br label %while.cond4

while.cond4:                                      ; preds = %if.end44, %while.end
  %lenq.0 = phi i32 [ %i.0, %while.end ], [ %i.1, %if.end44 ]
  %p.0 = phi ptr [ %a, %while.end ], [ %incdec.ptr47, %if.end44 ]
  %len.0 = phi i32 [ %i.0, %while.end ], [ %len.1, %if.end44 ]
  %1 = load i32, ptr %n, align 4, !tbaa !11
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %n, align 4, !tbaa !11
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body5, label %while.end48

while.body5:                                      ; preds = %while.cond4
  %idx.ext6 = sext i32 %lenq.0 to i64
  %add.ptr7 = getelementptr inbounds i8, ptr %p.0, i64 %idx.ext6
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %add.ptr7, i32 1
  br label %while.cond8

while.cond8:                                      ; preds = %while.body17, %while.body5
  %i.1 = phi i32 [ 0, %while.body5 ], [ %inc18, %while.body17 ]
  %idx.ext9 = sext i32 %i.1 to i64
  %add.ptr10 = getelementptr inbounds i8, ptr %incdec.ptr, i64 %idx.ext9
  %2 = load i8, ptr %add.ptr10, align 1, !tbaa !5, !invariant.load !13
  %conv11 = sext i8 %2 to i32
  %cmp12 = icmp ne i32 %conv11, 32
  br i1 %cmp12, label %land.end, label %while.end19

land.end:                                         ; preds = %while.cond8
  %cmp16 = icmp ne i32 %conv11, 0
  br i1 %cmp16, label %while.body17, label %while.end19

while.body17:                                     ; preds = %land.end
  %inc18 = add nsw i32 %i.1, 1
  br label %while.cond8, !llvm.loop !14

while.end19:                                      ; preds = %while.cond8, %land.end
  %add = add i32 %len.0, 1
  %inc20 = add i32 %add, %i.1
  %idx.neg = sub i64 0, %idx.ext6
  %add.ptr22 = getelementptr inbounds i8, ptr %incdec.ptr, i64 %idx.neg
  %incdec.ptr23 = getelementptr inbounds i8, ptr %add.ptr22, i32 -1
  %cmp24 = icmp sle i32 %inc20, 80
  br i1 %cmp24, label %if.then, label %if.else

if.then:                                          ; preds = %while.end19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %j.0 = phi i32 [ 0, %if.then ], [ %inc29, %for.inc ]
  %sub = sub nsw i32 %lenq.0, 1
  %cmp25 = icmp sle i32 %j.0, %sub
  br i1 %cmp25, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idx.ext26 = sext i32 %j.0 to i64
  %add.ptr27 = getelementptr inbounds i8, ptr %incdec.ptr23, i64 %idx.ext26
  %3 = load i8, ptr %add.ptr27, align 1, !tbaa !5, !invariant.load !13
  %call28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i8 noundef signext %3)
  %inc29 = add nsw i32 %j.0, 1
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %4 = load i32, ptr %n, align 4, !tbaa !11
  %tobool30 = icmp ne i32 %4, 0
  br i1 %tobool30, label %if.then31, label %if.end44

if.then31:                                        ; preds = %for.end
  %call32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull dereferenceable(2) @.str)
  br label %if.end44

if.else:                                          ; preds = %while.end19
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc40, %if.else
  %j.1 = phi i32 [ 0, %if.else ], [ %inc41, %for.inc40 ]
  %sub34 = sub nsw i32 %lenq.0, 1
  %cmp35 = icmp sle i32 %j.1, %sub34
  br i1 %cmp35, label %for.inc40, label %for.end42

for.inc40:                                        ; preds = %for.cond33
  %idx.ext37 = sext i32 %j.1 to i64
  %add.ptr38 = getelementptr inbounds i8, ptr %incdec.ptr23, i64 %idx.ext37
  %5 = load i8, ptr %add.ptr38, align 1, !tbaa !5, !invariant.load !13
  %call39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i8 noundef signext %5)
  %inc41 = add nsw i32 %j.1, 1
  br label %for.cond33, !llvm.loop !16

for.end42:                                        ; preds = %for.cond33
  %call43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end44

if.end44:                                         ; preds = %for.end, %if.then31, %for.end42
  %len.1 = phi i32 [ %i.1, %for.end42 ], [ %inc20, %if.then31 ], [ %inc20, %for.end ]
  %add.ptr46 = getelementptr inbounds i8, ptr %incdec.ptr23, i64 %idx.ext6
  %incdec.ptr47 = getelementptr inbounds nuw i8, ptr %add.ptr46, i32 1
  br label %while.cond4, !llvm.loop !17

while.end48:                                      ; preds = %while.cond4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #6
  call void @llvm.lifetime.end.p0(i64 noundef 10000, ptr noundef captures(none) %a) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = !{}
!14 = distinct !{!14, !9, !10}
!15 = distinct !{!15, !9, !10}
!16 = distinct !{!16, !9, !10}
!17 = distinct !{!17, !9, !10}
