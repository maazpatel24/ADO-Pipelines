using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.Functions.Worker;
using Microsoft.Extensions.Logging;

namespace My.Function
{
    public class My_Http_Trigger
    {
        private readonly ILogger<My_Http_Trigger> _logger;

        public My_Http_Trigger(ILogger<My_Http_Trigger> logger)
        {
            _logger = logger;
        }

        [Function("My_Http_Trigger")]
        public IActionResult Run([HttpTrigger(AuthorizationLevel.Anonymous, "get", "post")] HttpRequest req)
        {
            _logger.LogInformation("C# HTTP trigger function processed a request.");
            return new OkObjectResult("Welcome to Azure Functions! This is My_HTTP_Trigger!");
        }
    }
}
