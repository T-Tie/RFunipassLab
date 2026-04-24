; ModuleID = '<stdin>'
source_filename = "/tmp/tmp7nbyot95.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local local_unnamed_addr global i32 1, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z5yinziii(i32 noundef %j, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %j, %n
  br i1 %cmp, label %entry.split, label %for.end

entry.split:                                      ; preds = %entry
  %rem = srem i32 %n, %j
  %cmp1 = icmp eq i32 %rem, 0
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry.split
  %j.addr.0 = phi i32 [ %j, %entry.split ], [ %inc6.i, %if.end ]
  %cmp2 = icmp ne i32 %n, %j.addr.0
  %or.cond = select i1 %cmp1, i1 %cmp2, i1 false
  br i1 %or.cond, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %for.cond
  %div = sdiv i32 %n, %j.addr.0
  %cmp4.not = icmp slt i32 %div, %j.addr.0
  br i1 %cmp4.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true3
  call fastcc void @outlined_ir_func_0() #7
  %call = tail call noundef i32 @_Z5yinziii(i32 noundef %j.addr.0, i32 noundef %div) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3, %for.cond
  %inc6.i = add nsw i32 %j.addr.0, 1
  br label %for.cond

for.end:                                          ; preds = %entry
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  %s = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #9
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %s) #9
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %s)
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup4, %entry
  %0 = load i32, ptr %s, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond2

for.cond2:                                        ; preds = %if.end, %for.body
  %i.0 = phi i32 [ 2, %for.body ], [ %inc6.i1, %if.end ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp3 = icmp sgt i32 %1, 1
  br i1 %cmp3, label %for.body5, label %for.cond.cleanup4

for.cond.cleanup4:                                ; preds = %for.cond2
  %2 = load i32, ptr @a, align 4, !tbaa !5
  %call11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %2)
  %call12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call11, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 1, ptr @a, align 4, !tbaa !5
  br label %for.cond

for.body5:                                        ; preds = %for.cond2
  %rem = urem i32 %1, %i.0
  %cmp6 = icmp eq i32 %rem, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body5
  %div = udiv i32 %1, %i.0
  %cmp7.not = icmp samesign ult i32 %div, %i.0
  br i1 %cmp7.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @outlined_ir_func_0() #7
  %call9 = call noundef i32 @_Z5yinziii(i32 noundef %i.0, i32 noundef %div) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body5
  %inc6.i1 = add nuw nsw i32 %i.0, 1
  br label %for.cond2

for.end15:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %s) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: minsize mustprogress nofree norecurse nosync nounwind optsize willreturn uwtable
define internal fastcc void @outlined_ir_func_0() unnamed_addr #6 {
newFuncRoot:
  br label %if.then_to_outline

if.then_to_outline:                               ; preds = %newFuncRoot
  %0 = load i32, ptr @a, align 4, !tbaa !5
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @a, align 4, !tbaa !5
  br label %if.then_after_outline.exitStub

if.then_after_outline.exitStub:                   ; preds = %if.then_to_outline
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { minsize mustprogress nofree norecurse nosync nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nofree nosync nounwind }
attributes #9 = { nofree nounwind }

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
