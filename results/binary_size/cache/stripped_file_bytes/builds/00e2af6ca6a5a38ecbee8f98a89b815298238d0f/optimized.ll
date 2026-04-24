; ModuleID = '/tmp/tmpgpqvm9vt.cpp'
source_filename = "/tmp/tmpgpqvm9vt.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [1000 x i32] zeroinitializer, align 16
@n = dso_local global i32 0, align 4
@f = dso_local global [999 x [999 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z3maxii(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4, !tbaa !5
  store i32 %b, ptr %b.addr, align 4, !tbaa !5
  %0 = load i32, ptr %a.addr, align 4, !tbaa !5
  %1 = load i32, ptr %b.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %a.addr, align 4, !tbaa !5
  store i32 %2, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i32, ptr %b.addr, align 4, !tbaa !5
  store i32 %3, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z6daodanii(i32 noundef %s, i32 noundef %h) #1 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  store i32 %s, ptr %s.addr, align 4, !tbaa !5
  store i32 %h, ptr %h.addr, align 4, !tbaa !5
  %0 = load i32, ptr %s.addr, align 4, !tbaa !5
  %1 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %h.addr, align 4, !tbaa !5
  %3 = load i32, ptr %s.addr, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [1000 x i32], ptr @a, i64 0, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp1 = icmp sge i32 %2, %4
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %5 = load i32, ptr %s.addr, align 4, !tbaa !5
  %add = add nsw i32 %5, 1
  %6 = load i32, ptr %s.addr, align 4, !tbaa !5
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [1000 x i32], ptr @a, i64 0, i64 %idxprom3
  %7 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %call = call noundef i32 @_Z6daodanii(i32 noundef %add, i32 noundef %7)
  %add5 = add nsw i32 %call, 1
  %8 = load i32, ptr %s.addr, align 4, !tbaa !5
  %add6 = add nsw i32 %8, 1
  %9 = load i32, ptr %h.addr, align 4, !tbaa !5
  %call7 = call noundef i32 @_Z6daodanii(i32 noundef %add6, i32 noundef %9)
  %call8 = call noundef i32 @_Z3maxii(i32 noundef %add5, i32 noundef %call7)
  store i32 %call8, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end
  %10 = load i32, ptr %s.addr, align 4, !tbaa !5
  %add9 = add nsw i32 %10, 1
  %11 = load i32, ptr %h.addr, align 4, !tbaa !5
  %call10 = call noundef i32 @_Z6daodanii(i32 noundef %add9, i32 noundef %11)
  store i32 %call10, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then2, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [1000 x i32], ptr @a, i64 0, i64 %idxprom
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call2 = call noundef i32 @_Z6daodanii(i32 noundef 0, i32 noundef 31999)
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call2)
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #3

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
