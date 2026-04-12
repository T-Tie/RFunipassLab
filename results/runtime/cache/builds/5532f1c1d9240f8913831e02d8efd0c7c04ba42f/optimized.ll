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
  call void @llvm.lifetime.start.p0(i64 10000, ptr %a) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call1 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef %a, i64 noundef 10000)
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
  %2 = load i8, ptr %add.ptr10, align 1, !tbaa !5
  %conv11 = sext i8 %2 to i32
  %cmp12 = icmp ne i32 %conv11, 32
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond8
  %cmp16 = icmp ne i32 %conv11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond8
  %3 = phi i1 [ false, %while.cond8 ], [ %cmp16, %land.rhs ]
  br i1 %3, label %while.body17, label %while.end19

while.body17:                                     ; preds = %land.end
  %inc18 = add nsw i32 %i.1, 1
  br label %while.cond8, !llvm.loop !13

while.end19:                                      ; preds = %land.end
  %add = add nsw i32 %len.0, %i.1
  %inc20 = add nsw i32 %add, 1
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
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idx.ext26 = sext i32 %j.0 to i64
  %add.ptr27 = getelementptr inbounds i8, ptr %incdec.ptr23, i64 %idx.ext26
  %4 = load i8, ptr %add.ptr27, align 1, !tbaa !5
  %call28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc29 = add nsw i32 %j.0, 1
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %5 = load i32, ptr %n, align 4, !tbaa !11
  %tobool30 = icmp ne i32 %5, 0
  br i1 %tobool30, label %if.then31, label %if.end

if.then31:                                        ; preds = %for.end
  %call32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  br label %if.end

if.end:                                           ; preds = %if.then31, %for.end
  br label %if.end44

if.else:                                          ; preds = %while.end19
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc40, %if.else
  %j.1 = phi i32 [ 0, %if.else ], [ %inc41, %for.inc40 ]
  %sub34 = sub nsw i32 %lenq.0, 1
  %cmp35 = icmp sle i32 %j.1, %sub34
  br i1 %cmp35, label %for.body36, label %for.end42

for.body36:                                       ; preds = %for.cond33
  %idx.ext37 = sext i32 %j.1 to i64
  %add.ptr38 = getelementptr inbounds i8, ptr %incdec.ptr23, i64 %idx.ext37
  %6 = load i8, ptr %add.ptr38, align 1, !tbaa !5
  %call39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %6)
  br label %for.inc40

for.inc40:                                        ; preds = %for.body36
  %inc41 = add nsw i32 %j.1, 1
  br label %for.cond33, !llvm.loop !15

for.end42:                                        ; preds = %for.cond33
  %call43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end44

if.end44:                                         ; preds = %for.end42, %if.end
  %len.1 = phi i32 [ %inc20, %if.end ], [ %i.1, %for.end42 ]
  %add.ptr46 = getelementptr inbounds i8, ptr %incdec.ptr23, i64 %idx.ext6
  %incdec.ptr47 = getelementptr inbounds nuw i8, ptr %add.ptr46, i32 1
  br label %while.cond4, !llvm.loop !16

while.end48:                                      ; preds = %while.cond4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.end.p0(i64 10000, ptr %a) #5
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
attributes #5 = { nounwind }

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
!13 = distinct !{!13, !9, !10}
!14 = distinct !{!14, !9, !10}
!15 = distinct !{!15, !9, !10}
!16 = distinct !{!16, !9, !10}
