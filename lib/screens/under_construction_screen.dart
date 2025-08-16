import { Card, CardContent } from "@/components/ui/card"

export default function UnderConstruction() {
  return (
    <div className="flex items-center justify-center h-screen bg-gray-100">
      <Card className="p-8 rounded-2xl shadow-lg text-center max-w-md">
        <CardContent className="flex flex-col items-center">
          {/* Icon */}
          <img 
            src="/construction-icon.png" 
            alt="Under Construction Icon" 
            width={200} 
            height={200} 
            className="mb-6"
          />

          {/* Title */}
          <h1 className="font-bold text-2xl mb-3">
            Under Construction
          </h1>
          
          {/* Description */}
          <p className="text-gray-600 text-base mb-8">
            We&apos;re working hard to give you the best experience. <br />
            Please stay tuned!
          </p>

          {/* Divider */}
          <div className="w-full border-t border-gray-200 my-4" />

          {/* Developer */}
          <div className="mb-3">
            <p className="font-semibold text-sm">Developer</p>
            <p className="text-sm text-gray-700">Muhammad Anus Gul</p>
          </div>

          {/* UI/UX */}
          <div>
            <p className="font-semibold text-sm">UI/UX</p>
            <p className="text-sm text-gray-700">Irman</p>
          </div>
        </CardContent>
      </Card>
    </div>
  )
}